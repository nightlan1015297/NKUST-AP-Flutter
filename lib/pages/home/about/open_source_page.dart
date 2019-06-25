import 'package:flutter/material.dart';
import 'package:nkust_ap/res/resource.dart' as Resource;
import 'package:nkust_ap/utils/global.dart';

class OpenSourcePageRoute extends MaterialPageRoute {
  OpenSourcePageRoute()
      : super(builder: (BuildContext context) => new OpenSourcePage());

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new OpenSourcePage());
  }
}

class OpenSourcePage extends StatefulWidget {
  static const String routerName = "/openSource";

  @override
  OpenSourcePageState createState() => new OpenSourcePageState();
}

class OpenSourcePageState extends State<OpenSourcePage>
    with SingleTickerProviderStateMixin {
  AppLocalizations app;

  @override
  void initState() {
    super.initState();
    FA.setCurrentScreen("OpenSourcePage", "open_source_page.dart");
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    app = AppLocalizations.of(context);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(app.aboutOpenSourceTitle),
        backgroundColor: Resource.Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          _item(
              "KUAS-AP-Material",
              "The MIT License (MIT)\n" +
                  "\n" +
                  "Copyright (c) 2015 HearSilent\n" +
                  "\n" +
                  "Permission is hereby granted, free of charge, to any person obtaining a copy\n" +
                  "of this software and associated documentation files (the \"Software\"), to deal\n" +
                  "in the Software without restriction, including without limitation the rights\n" +
                  "to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n" +
                  "copies of the Software, and to permit persons to whom the Software is\n" +
                  "furnished to do so, subject to the following conditions:\n" +
                  "\n" +
                  "The above copyright notice and this permission notice shall be included in all\n" +
                  "copies or substantial portions of the Software.\n" +
                  "\n" +
                  "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n" +
                  "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n" +
                  "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n" +
                  "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n" +
                  "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n" +
                  "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\n" +
                  "SOFTWARE.\n"),
          _item(
              "flutter",
              "Copyright 2014 The Chromium Authors. All rights reserved.\n\n"
              "Redistribution and use in source and binary forms, with or without"
              "modification, are permitted provided that the following conditions are"
              "met:\n"
              "* Redistributions of source code must retain the above copyright"
              "  notice, this list of conditions and the following disclaimer.\n"
              "* Redistributions in binary form must reproduce the above"
              "  copyright notice, this list of conditions and the following"
              " disclaimer in the documentation and/or other materials provided"
              " with the distribution.\n"
              "* Neither the name of Google Inc. nor the names of its"
              " contributors may be used to endorse or promote products derived"
              "  from this software without specific prior written permission.\n\n"
              "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS"
              "\"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT"
              "LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR"
              "A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT"
              "OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,"
              "SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT"
              "LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,"
              "DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY"
              "THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT"
              "(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE"
              "OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."),
          _item(
              "flutter plugin",
              " Copyright 2017 The Chromium Authors. All rights reserved.\n\n"
              " Redistribution and use in source and binary forms, with or without"
              " modification, are permitted provided that the following conditions are"
              " met:\n\n"
              "    * Redistributions of source code must retain the above copyright"
              " notice, this list of conditions and the following disclaimer.\n"
              "    * Redistributions in binary form must reproduce the above"
              " copyright notice, this list of conditions and the following disclaimer"
              " in the documentation and/or other materials provided with the"
              " distribution.\n"
              "    * Neither the name of Google Inc. nor the names of its"
              " contributors may be used to endorse or promote products derived from"
              " this software without specific prior written permission.\n\n"
              " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS"
              " \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT"
              " LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR"
              " A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT"
              " OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,"
              " SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT"
              " LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,"
              " DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY"
              " THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT"
              " (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE"
              " OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."),
          _item(
              "dio",
              "MIT License\n\n"
              "Copyright (c) 2018 wendux\n\n"
              "Permission is hereby granted, free of charge, to any person obtaining a copy"
              "of this software and associated documentation files (the \"Software\"), to deal"
              "in the Software without restriction, including without limitation the rights"
              "to use, copy, modify, merge, publish, distribute, sublicense, and/or sell"
              "copies of the Software, and to permit persons to whom the Software is"
              "furnished to do so, subject to the following conditions:\n\n"
              "The above copyright notice and this permission notice shall be included in all"
              "copies or substantial portions of the Software.\n\n"
              "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR"
              "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,"
              "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE"
              "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER"
              "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,"
              "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE"
              "SOFTWARE."),
          _item(
              "fluttertoast",
              "Apache License\n" +
                  "Version 2.0, January 2004\n" +
                  "http://www.apache.org/licenses/\n" +
                  "TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION\n" +
                  "\n" +
                  "Definitions.\n" +
                  "\n" +
                  "\"License\" shall mean the terms and conditions for use, reproduction, and distribution as defined by Sections 1 through 9 of this document.\n" +
                  "\n" +
                  "\"Licensor\" shall mean the copyright owner or entity authorized by the copyright owner that is granting the License.\n" +
                  "\n" +
                  "\"Legal Entity\" shall mean the union of the acting entity and all other entities that control, are controlled by, or are under common control with that entity. For the purposes of this definition, \"control\" means (i) the power, direct or indirect, to cause the direction or management of such entity, whether by contract or otherwise, or (ii) ownership of fifty percent (50%) or more of the outstanding shares, or (iii) beneficial ownership of such entity.\n" +
                  "\n" +
                  "\"You\" (or \"Your\") shall mean an individual or Legal Entity exercising permissions granted by this License.\n" +
                  "\n" +
                  "\"Source\" form shall mean the preferred form for making modifications, including but not limited to software source code, documentation source, and configuration files.\n" +
                  "\n" +
                  "\"Object\" form shall mean any form resulting from mechanical transformation or translation of a Source form, including but not limited to compiled object code, generated documentation, and conversions to other media types.\n" +
                  "\n" +
                  "\"Work\" shall mean the work of authorship, whether in Source or Object form, made available under the License, as indicated by a copyright notice that is included in or attached to the work (an example is provided in the Appendix below).\n" +
                  "\n" +
                  "\"Derivative Works\" shall mean any work, whether in Source or Object form, that is based on (or derived from) the Work and for which the editorial revisions, annotations, elaborations, or other modifications represent, as a whole, an original work of authorship. For the purposes of this License, Derivative Works shall not include works that remain separable from, or merely link (or bind by name) to the interfaces of, the Work and Derivative Works thereof.\n" +
                  "\n" +
                  "\"Contribution\" shall mean any work of authorship, including the original version of the Work and any modifications or additions to that Work or Derivative Works thereof, that is intentionally submitted to Licensor for inclusion in the Work by the copyright owner or by an individual or Legal Entity authorized to submit on behalf of the copyright owner. For the purposes of this definition, \"submitted\" means any form of electronic, verbal, or written communication sent to the Licensor or its representatives, including but not limited to communication on electronic mailing lists, source code control systems, and issue tracking systems that are managed by, or on behalf of, the Licensor for the purpose of discussing and improving the Work, but excluding communication that is conspicuously marked or otherwise designated in writing by the copyright owner as \"Not a Contribution.\"\n" +
                  "\n" +
                  "\"Contributor\" shall mean Licensor and any individual or Legal Entity on behalf of whom a Contribution has been received by Licensor and subsequently incorporated within the Work.\n" +
                  "\n" +
                  "Grant of Copyright License. Subject to the terms and conditions of this License, each Contributor hereby grants to You a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare Derivative Works of, publicly display, publicly perform, sublicense, and distribute the Work and such Derivative Works in Source or Object form.\n" +
                  "\n" +
                  "Grant of Patent License. Subject to the terms and conditions of this License, each Contributor hereby grants to You a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable (except as stated in this section) patent license to make, have made, use, offer to sell, sell, import, and otherwise transfer the Work, where such license applies only to those patent claims licensable by such Contributor that are necessarily infringed by their Contribution(s) alone or by combination of their Contribution(s) with the Work to which such Contribution(s) was submitted. If You institute patent litigation against any entity (including a cross-claim or counterclaim in a lawsuit) alleging that the Work or a Contribution incorporated within the Work constitutes direct or contributory patent infringement, then any patent licenses granted to You under this License for that Work shall terminate as of the date such litigation is filed.\n" +
                  "\n" +
                  "Redistribution. You may reproduce and distribute copies of the Work or Derivative Works thereof in any medium, with or without modifications, and in Source or Object form, provided that You meet the following conditions:\n" +
                  "\n" +
                  "(a) You must give any other recipients of the Work or Derivative Works a copy of this License; and\n" +
                  "\n" +
                  "(b) You must cause any modified files to carry prominent notices stating that You changed the files; and\n" +
                  "\n" +
                  "(c) You must retain, in the Source form of any Derivative Works that You distribute, all copyright, patent, trademark, and attribution notices from the Source form of the Work, excluding those notices that do not pertain to any part of the Derivative Works; and\n" +
                  "\n" +
                  "(d) If the Work includes a \"NOTICE\" text file as part of its distribution, then any Derivative Works that You distribute must include a readable copy of the attribution notices contained within such NOTICE file, excluding those notices that do not pertain to any part of the Derivative Works, in at least one of the following places: within a NOTICE text file distributed as part of the Derivative Works; within the Source form or documentation, if provided along with the Derivative Works; or, within a display generated by the Derivative Works, if and wherever such third-party notices normally appear. The contents of the NOTICE file are for informational purposes only and do not modify the License. You may add Your own attribution notices within Derivative Works that You distribute, alongside or as an addendum to the NOTICE text from the Work, provided that such additional attribution notices cannot be construed as modifying the License.\n" +
                  "\n" +
                  "You may add Your own copyright statement to Your modifications and may provide additional or different license terms and conditions for use, reproduction, or distribution of Your modifications, or for any such Derivative Works as a whole, provided Your use, reproduction, and distribution of the Work otherwise complies with the conditions stated in this License.\n" +
                  "\n" +
                  "Submission of Contributions. Unless You explicitly state otherwise, any Contribution intentionally submitted for inclusion in the Work by You to the Licensor shall be under the terms and conditions of this License, without any additional terms or conditions. Notwithstanding the above, nothing herein shall supersede or modify the terms of any separate license agreement you may have executed with Licensor regarding such Contributions.\n" +
                  "\n" +
                  "Trademarks. This License does not grant permission to use the trade names, trademarks, service marks, or product names of the Licensor, except as required for reasonable and customary use in describing the origin of the Work and reproducing the content of the NOTICE file.\n" +
                  "\n" +
                  "Disclaimer of Warranty. Unless required by applicable law or agreed to in writing, Licensor provides the Work (and each Contributor provides its Contributions) on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE. You are solely responsible for determining the appropriateness of using or redistributing the Work and assume any risks associated with Your exercise of permissions under this License.\n" +
                  "\n" +
                  "Limitation of Liability. In no event and under no legal theory, whether in tort (including negligence), contract, or otherwise, unless required by applicable law (such as deliberate and grossly negligent acts) or agreed to in writing, shall any Contributor be liable to You for damages, including any direct, indirect, special, incidental, or consequential damages of any character arising as a result of this License or out of the use or inability to use the Work (including but not limited to damages for loss of goodwill, work stoppage, computer failure or malfunction, or any and all other commercial damages or losses), even if such Contributor has been advised of the possibility of such damages.\n" +
                  "\n" +
                  "Accepting Warranty or Additional Liability. While redistributing the Work or Derivative Works thereof, You may choose to offer, and charge a fee for, acceptance of support, warranty, indemnity, or other liability obligations and/or rights consistent with this License. However, in accepting such obligations, You may act only on Your own behalf and on Your sole responsibility, not on behalf of any other Contributor, and only if You agree to indemnify, defend, and hold each Contributor harmless for any liability incurred by, or claims asserted against, such Contributor by reason of your accepting any such warranty or additional liability.\n" +
                  "\n" +
                  "END OF TERMS AND CONDITIONS\n" +
                  "\n" +
                  "APPENDIX: How to apply the Apache License to your work.\n" +
                  "\n" +
                  "  To apply the Apache License to your work, attach the following\n" +
                  "  boilerplate notice, with the fields enclosed by brackets \"[]\"\n" +
                  "  replaced with your own identifying information. (Don't include\n" +
                  "  the brackets!)  The text should be enclosed in the appropriate\n" +
                  "  comment syntax for the file format. We also recommend that a\n" +
                  "  file or class name and description of purpose be included on the\n" +
                  "  same \"printed page\" as the copyright notice for easier\n" +
                  "  identification within third-party archives.\n" +
                  "Copyright 2018 Karthik Ponnam\n" +
                  "\n" +
                  "Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at\n" +
                  "\n" +
                  "   http://www.apache.org/licenses/LICENSE-2.0\n" +
                  "Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.\n"),
          _item(
              "flutter_calendar",
              "Copyright 2018 AppTree SoftWare\n" +
                  "\n" +
                  "Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:\n" +
                  "\n" +
                  "Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.\n" +
                  "\n" +
                  "Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.\n" +
                  "\n" +
                  "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."),
          _item(
              "flutter_carousel_slider",
              "MIT License\n" +
                  "\n" +
                  "Copyright (c) 2017 serenader\n" +
                  "\n" +
                  "Permission is hereby granted, free of charge, to any person obtaining a copy\n" +
                  "of this software and associated documentation files (the \"Software\"), to deal\n" +
                  "in the Software without restriction, including without limitation the rights\n" +
                  "to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n" +
                  "copies of the Software, and to permit persons to whom the Software is\n" +
                  "furnished to do so, subject to the following conditions:\n" +
                  "\n" +
                  "The above copyright notice and this permission notice shall be included in all\n" +
                  "copies or substantial portions of the Software.\n" +
                  "\n" +
                  "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n" +
                  "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n" +
                  "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n" +
                  "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n" +
                  "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n" +
                  "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\n" +
                  "SOFTWARE."),
          _item(
              "flutter_crashlytics",
              "BSD 2-Clause License\n" +
                  "\n" +
                  "Copyright (c) 2018, KiWi\n" +
                  "All rights reserved.\n" +
                  "\n" +
                  "Redistribution and use in source and binary forms, with or without\n" +
                  "modification, are permitted provided that the following conditions are met:\n" +
                  "\n" +
                  "* Redistributions of source code must retain the above copyright notice, this\n" +
                  "  list of conditions and the following disclaimer.\n" +
                  "\n" +
                  "* Redistributions in binary form must reproduce the above copyright notice,\n" +
                  "  this list of conditions and the following disclaimer in the documentation\n" +
                  "  and/or other materials provided with the distribution.\n" +
                  "\n" +
                  "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"\n" +
                  "AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE\n" +
                  "IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE\n" +
                  "DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE\n" +
                  "FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL\n" +
                  "DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR\n" +
                  "SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER\n" +
                  "CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,\n" +
                  "OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\n" +
                  "OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n"),
          _item(
              "encrypt",
              "BSD 3-Clause License\n"
              "Copyright (c) 2018, Leo Cavalcante\n"
              "All rights reserved.\n"
              "\n"
              "Redistribution and use in source and binary forms, with or without\n"
              "modification, are permitted provided that the following conditions are met:\n"
              "\n"
              "* Redistributions of source code must retain the above copyright notice, this\n"
              "list of conditions and the following disclaimer.\n"
              "\n"
              "* Redistributions in binary form must reproduce the above copyright notice,\n"
              "this list of conditions and the following disclaimer in the documentation\n"
              "and/or other materials provided with the distribution.\n"
              "\n"
              "* Neither the name of the copyright holder nor the names of its\n"
              "contributors may be used to endorse or promote products derived from\n"
              "this software without specific prior written permission.\n"
              "\n"
              "    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"\n"
              "AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE\n"
              "IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE\n"
              "DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE\n"
              "FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL\n"
              "DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR"
              "    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER\n"
              "CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,\n"
              "OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\n"
              "OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n"
              ")\n"),
          _item(
              'flutter_local_notifications',
              "// Copyright 2018 Michael Bui. All rights reserved.\n" +
                  "//\n" +
                  "// Redistribution and use in source and binary forms, with or without\n" +
                  "// modification, are permitted provided that the following conditions are\n" +
                  "// met:\n" +
                  "//\n" +
                  "//    * Redistributions of source code must retain the above copyright\n" +
                  "// notice, this list of conditions and the following disclaimer.\n" +
                  "//    * Redistributions in binary form must reproduce the above\n" +
                  "// copyright notice, this list of conditions and the following disclaimer\n" +
                  "// in the documentation and/or other materials provided with the\n" +
                  "// distribution.\n" +
                  "//    * Neither the name of the copyright holder nor the names of its\n" +
                  "// contributors may be used to endorse or promote products derived from\n" +
                  "// this software without specific prior written permission.\n" +
                  "//\n" +
                  "// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\n" +
                  "// \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\n" +
                  "// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\n" +
                  "// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\n" +
                  "// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\n" +
                  "// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\n" +
                  "// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\n" +
                  "// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\n" +
                  "// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n" +
                  "// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\n" +
                  "// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."),
          _item(
              'sprintf',
              "Copyright (c) 2012, Richard Eames All rights reserved.\n" +
                  "\n" +
                  "Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:\n" +
                  "\n" +
                  "Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.\n" +
                  "Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.\n" +
                  "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."),
          _item('add_2_calendar',
              'MIT License\n\nCopyright (c) 2018 Javi Hurtado\n\nPermission is hereby granted, free of charge, to any person obtaining a copy\nof this software and associated documentation files (the "Software"), to deal\nin the Software without restriction, including without limitation the rights\nto use, copy, modify, merge, publish, distribute, sublicense, and/or sell\ncopies of the Software, and to permit persons to whom the Software is\nfurnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all\ncopies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\nFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\nLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\nSOFTWARE.'),
          _item(
              'flutter_cached_network_image',
              "The MIT License (MIT)\n" +
                  "\n" +
                  "Copyright (c) 2018 Rene Floor\n" +
                  "\n" +
                  "Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n" +
                  "\n" +
                  "The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n" +
                  "\n" +
                  "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE."),
          _item(
              'app_review',
              "MIT License\n" +
                  "\n" +
                  "Copyright (c) 2018 Rody Davis\n" +
                  "\n" +
                  "Permission is hereby granted, free of charge, to any person obtaining a copy\n" +
                  "of this software and associated documentation files (the \"Software\"), to deal\n" +
                  "in the Software without restriction, including without limitation the rights\n" +
                  "to use, copy, modify, merge, publish, distribute, sublicense, and/or sell\n" +
                  "copies of the Software, and to permit persons to whom the Software is\n" +
                  "furnished to do so, subject to the following conditions:\n" +
                  "\n" +
                  "The above copyright notice and this permission notice shall be included in all\n" +
                  "copies or substantial portions of the Software.\n" +
                  "\n" +
                  "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\n" +
                  "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\n" +
                  "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\n" +
                  "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\n" +
                  "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\n" +
                  "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\n" +
                  "SOFTWARE."),
        ],
      ),
    );
  }

  _item(String text, String subText) => Card(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        elevation: 4.0,
        child: Container(
          padding:
              EdgeInsets.only(top: 24.0, left: 16.0, bottom: 16.0, right: 16.0),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 4.0,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 14.0, color: Resource.Colors.grey),
                  text: subText,
                ),
              ),
            ],
          ),
        ),
      );
}