Return-Path: <clang-built-linux+bncBDA7JSP26EHBBWU5ZWCAMGQEPENHMXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A612C374D43
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 04:05:15 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id 106-20020a9d08730000b02902d29fa5c2c3sf2273012oty.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 19:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AMo3XBOqFM/33v/sP2S4Xy5O3j7FAcM1Eza/CmcysmU=;
        b=QSNYnu/pOeGHnte1ugsrmXvKO2rrgPCCncKI0teuuwgGmxkgkznuaLIGGYtYyHpKh7
         ZRatFXFkvI4p8LKd4rmSIxU0K89+00yDJyc5ETBc/nePDjaq8wLaKtQbgNpq/RdqymP5
         JWiTkye+Q9S2z1SMKDWqajynKVrTLJMNT/984KXI6U2OK/9LjJa33BanDk0xQH56TDtg
         f1oJ4kMzcGl0nclXtyZTfiOZp3M4r5vtGCUk+RI78TA1hZnMLzMNvWpIYIxrPCDLlwkS
         I3L3GWqhAMmrKRAsSgzq0ZpMqSK/w7z+P4NI2Sc3474i4x9B9ND00Ml26Hv6LDnE6G/g
         aHLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AMo3XBOqFM/33v/sP2S4Xy5O3j7FAcM1Eza/CmcysmU=;
        b=iKFMgTEXP7SxkSI/CEYNY2rWsegyMDUm/iPd6zmaG8VzYoc7sMsU0o3qvG9iMn9MYd
         /YkTdnnROxYwxQAZ0W1nS0kky5J7xM1PfzEbE32qXOM92v3j2xsSiDvTrx8nK8OP+ewA
         1p769XypribPMxAEhTny8PcLv0FJpHwMFsxUFtsE1ikK5jCZd2ZQsImMxVqNXN6qvPbB
         qLo+oPSGIh28EtBV/iG6H9dwsxJHxWN3G/O+0+RCeHdNKe7e7TE15sRzuGmqTaN9g0nD
         lFeJYQ5OeVMdNaHX+JyKtmvNEbGwIaIEDWyDfRf7KbTR42LHXUcZiqczULZzC06JtPUG
         GzDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AMo3XBOqFM/33v/sP2S4Xy5O3j7FAcM1Eza/CmcysmU=;
        b=WtZoklpIusQIZl1yTRhpXBRz7l1yFLtW6M1vLkEstNCreExSSdE8Ssbe09jt8q8+YA
         I8Ht5SFEadMtqhicngFpjNLoRjvS2JDMfC3heYrwRPHgmqulEqYJ4nbOKaqBq6ygA0nA
         zPw6bVyawVWcUF3A84StFoTsG7Srf2geBik1FtkUmHFxpGoZq6CP/6e4MBAVs+TCciGh
         h6KUD5p29TUbKGSWGDyTMRM7f8597/9OZX1oBmEqy0HgGJ4QfPlwhyQ5NtwdXY9z2Krp
         yZ0XRr0XaDaq6qtwZED2wl6H1mFsTkYRS4e5sv48AmQI6M74euRQIE0XE0uAduYjBcRf
         /XGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ylyOGk4rwivhMG0KwXS+NjWZBnJExyYoYbxdkuw5FVJf0viG8
	5T4CfsZIsE09SMhJQSXFkhE=
X-Google-Smtp-Source: ABdhPJwpME57kLCnB/NhhoFDYbmPhk3ZFxPfSEwZ7oWhEdFWP0R+NWdCLJCWujg0bVBZN3dwtDZNsg==
X-Received: by 2002:a9d:684e:: with SMTP id c14mr1341735oto.295.1620266714703;
        Wed, 05 May 2021 19:05:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c08:: with SMTP id o8ls298860otk.0.gmail; Wed, 05 May
 2021 19:05:14 -0700 (PDT)
X-Received: by 2002:a9d:6b85:: with SMTP id b5mr1384636otq.172.1620266714119;
        Wed, 05 May 2021 19:05:14 -0700 (PDT)
Date: Wed, 5 May 2021 19:05:13 -0700 (PDT)
From: Black Frog <blackfrog1@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <2adfa8c7-17d3-4112-b977-4ec9f672f1acn@googlegroups.com>
Subject: Make Process -- checking environment
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_544_1155405233.1620266713572"
X-Original-Sender: blackfrog1@gmail.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

------=_Part_544_1155405233.1620266713572
Content-Type: multipart/alternative; 
	boundary="----=_Part_545_13949682.1620266713572"

------=_Part_545_13949682.1620266713572
Content-Type: text/plain; charset="UTF-8"

In the sample below, the output that produces "checking ..."
Which process is producing the line are control them manually?



make[3]: Entering directory `/Volumes/OpenWrt/openwrt/tools/libelf'

(cd /Volumes/OpenWrt/openwrt/build_dir/host/libelf-0.8.13/; bash 
./configure --target=arm-apple-darwin20.4.0 --host=arm-apple-darwin20.4.0 
--build=arm-apple-darwin20.4.0 --program-prefix="" --program-suffix="" 
--prefix=/Volumes/OpenWrt/openwrt/staging_dir/host 
--exec-prefix=/Volumes/OpenWrt/openwrt/staging_dir/host 
--sysconfdir=/Volumes/OpenWrt/openwrt/staging_dir/host/etc 
--localstatedir=/Volumes/OpenWrt/openwrt/staging_dir/host/var 
--sbindir=/Volumes/OpenWrt/openwrt/staging_dir/host/bin --disable-shared 
--enable-elf64; )

loading site script /Volumes/OpenWrt/openwrt/include/site/darwin

loading cache ./config.cache

checking whether make sets ${MAKE}... yes

checking for gcc... gcc

checking whether the C compiler (gcc  ) works... yes

checking whether the C compiler (gcc  ) is a cross-compiler... no

checking whether we are using GNU C... yes

checking whether gcc accepts -g... yes

checking how to run the C preprocessor... gcc -E

checking for a BSD compatible install... /opt/local/bin/ginstall -c

checking for ranlib... ranlib

checking whether ln -s works... yes

checking for ANSI C header files... no

checking for unistd.h... yes

checking for stdint.h... yes

checking for fcntl.h... yes

checking for elf.h... no

checking for sys/elf.h... no

checking for link.h... no

checking for sys/link.h... no

checking if gcc can compile elf.h... no

checking for ar.h... yes

checking for libelf.h... no

checking for nlist.h... yes

checking for gelf.h... no

checking whether to install <libelf.h>, <nlist.h> and <gelf.h>... yes

checking for working const... yes

checking for off_t... yes

checking for size_t... yes

checking size of short... 0

checking size of int... 0

checking size of long... 0

checking size of long long... 0

checking size of __int64... 0

checking for 64-bit integer... no

checking for 32-bit integer... no

configure: error: neither int nor long is 32-bit

make[3]: *** 
[/Volumes/OpenWrt/openwrt/build_dir/host/libelf-0.8.13/.configured] Error 1

make[3]: Leaving directory `/Volumes/OpenWrt/openwrt/tools/libelf'

time: tools/libelf/compile#0.36#0.34#0.95

make[2]: *** [tools/libelf/compile] Error 2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2adfa8c7-17d3-4112-b977-4ec9f672f1acn%40googlegroups.com.

------=_Part_545_13949682.1620266713572
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In the sample below, the output that produces "checking ..."<div>Which proc=
ess is producing the line are control them manually?</div><div><br><div><br=
></div><div><br></div><div><p>make[3]: Entering directory `/Volumes/OpenWrt=
/openwrt/tools/libelf'</p>
<p>(cd /Volumes/OpenWrt/openwrt/build_dir/host/libelf-0.8.13/; bash ./confi=
gure --target=3Darm-apple-darwin20.4.0 --host=3Darm-apple-darwin20.4.0 --bu=
ild=3Darm-apple-darwin20.4.0 --program-prefix=3D"" --program-suffix=3D"" --=
prefix=3D/Volumes/OpenWrt/openwrt/staging_dir/host --exec-prefix=3D/Volumes=
/OpenWrt/openwrt/staging_dir/host --sysconfdir=3D/Volumes/OpenWrt/openwrt/s=
taging_dir/host/etc --localstatedir=3D/Volumes/OpenWrt/openwrt/staging_dir/=
host/var --sbindir=3D/Volumes/OpenWrt/openwrt/staging_dir/host/bin --disabl=
e-shared --enable-elf64; )</p>
<p>loading site script /Volumes/OpenWrt/openwrt/include/site/darwin</p>
<p>loading cache ./config.cache</p>
<p>checking whether make sets ${MAKE}... yes</p>
<p>checking for gcc... gcc</p>
<p>checking whether the C compiler (gcc&nbsp; ) works... yes</p>
<p>checking whether the C compiler (gcc&nbsp; ) is a cross-compiler... no</=
p>
<p>checking whether we are using GNU C... yes</p>
<p>checking whether gcc accepts -g... yes</p>
<p>checking how to run the C preprocessor... gcc -E</p>
<p>checking for a BSD compatible install... /opt/local/bin/ginstall -c</p>
<p>checking for ranlib... ranlib</p>
<p>checking whether ln -s works... yes</p>
<p>checking for ANSI C header files... no</p>
<p>checking for unistd.h... yes</p>
<p>checking for stdint.h... yes</p>
<p>checking for fcntl.h... yes</p>
<p>checking for elf.h... no</p>
<p>checking for sys/elf.h... no</p>
<p>checking for link.h... no</p>
<p>checking for sys/link.h... no</p>
<p>checking if gcc can compile elf.h... no</p>
<p>checking for ar.h... yes</p>
<p>checking for libelf.h... no</p>
<p>checking for nlist.h... yes</p>
<p>checking for gelf.h... no</p>
<p>checking whether to install &lt;libelf.h&gt;, &lt;nlist.h&gt; and &lt;ge=
lf.h&gt;... yes</p>
<p>checking for working const... yes</p>
<p>checking for off_t... yes</p>
<p>checking for size_t... yes</p>
<p>checking size of short... 0</p>
<p>checking size of int... 0</p>
<p>checking size of long... 0</p>
<p>checking size of long long... 0</p>
<p>checking size of __int64... 0</p>
<p>checking for 64-bit integer... no</p>
<p>checking for 32-bit integer... no</p>
<p>configure: error: neither int nor long is 32-bit</p>
<p>make[3]: *** [/Volumes/OpenWrt/openwrt/build_dir/host/libelf-0.8.13/.con=
figured] Error 1</p>
<p>make[3]: Leaving directory `/Volumes/OpenWrt/openwrt/tools/libelf'</p>
<p>time: tools/libelf/compile#0.36#0.34#0.95</p>
<p>make[2]: *** [tools/libelf/compile] Error 2</p></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/2adfa8c7-17d3-4112-b977-4ec9f672f1acn%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/2adfa8c7-17d3-4112-b977-4ec9f672f1acn%40googleg=
roups.com</a>.<br />

------=_Part_545_13949682.1620266713572--

------=_Part_544_1155405233.1620266713572--
