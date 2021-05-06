Return-Path: <clang-built-linux+bncBCU7P3EIWQOBBU43ZWCAMGQEE76OZFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FFB374D37
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 04:00:52 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id k7-20020a9d4b870000b02902a5bfbbbd3bsf2224611otf.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 19:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/xjia9J3U6FilpUSSG4NY/81uGiICwLqnHWd5fxwkbk=;
        b=Ftr7ccz9UdCsSrMuiBG2cRMj9euyJ3/Kwwynm9pgVb1Fd53bMGi+0eUw1twrcRMucv
         ToGyTOwPUQKZZTK4MtomiFOeSJ+8odzUCcmnN5Dw6kRUUwGYi0/KU5krNPjLj7r6IvOp
         m7o9miVDvKtMhwnHVEPJBBaeV7gWGNndAdcpUhHpAeaDj/mbbBhuzvSwTsPsLH2ct20x
         jl10oex1zYDXCBVJmdPdaKczDaaLcZWdxzf5RjYFgi963G+R7f3YSHlkragXI1KHOc25
         SZams+OYdzVa3N0c4txDJ0bJst0BGl7kVinpHdtcfEb/Re/mStZLNhrWLHuG478pHtjX
         /FSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/xjia9J3U6FilpUSSG4NY/81uGiICwLqnHWd5fxwkbk=;
        b=YOz72+xKBk7nseQ7+fLYGoAZgUPsSIFnBHESC/T7d3X2PtohUABOjPd3EpoVvclVF7
         W14YiYO5i6FMhxBDskMk9s/iqEkeFFkww7sFvDGs2zZFVDRJ8BeYHT2jIKgadgClXA6O
         IDAKs6ztO6Y0wWaQsCc5cJlhXShle4LQXGMNkv1QOQojUVXssBx3uCMNh4PjqE9adV8q
         lrjbwm87hiZbs+wWhs6+D40RQ3wmINavGYirL0cjfaXaho43hOBhq14LRLrU/SDY0GFb
         7ofWztiA+B9hJeZT4aoyWHIabinwkNIDuSDBcyU2k2w/i9MSEpoySjwucBTAqYW4bGrC
         +x/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/xjia9J3U6FilpUSSG4NY/81uGiICwLqnHWd5fxwkbk=;
        b=AMfgr7hjrrKz6qNo2eux/4oACWjC+6pt4gCLs6nxyT1JYe06HPluXF3GLs+kmkt3pT
         jDAYk4/lRekRk+R1p5crFBCYaDd/9LNuPyEQQAMrerlwBkc4CqCDazKPdnq726rCTjYm
         bT4nRXdWTh5JU1pk/mywagHCAFwc+9eY85hmqwBIW8tm+/ECnkIuiijysWatubfzoxb+
         gWVrZDNo2Ex9LdklPztrVn3jSQx9DZxeg1Lww5EBJKE4OJ53MrUXWtfFQ2kI78Y3CQmS
         pDQ/6X0nsgaBv+QGwMvD41K3S/CeHuWvmRxfA57jcTxLIybNr6xS6ilnT9WmMUntLYfO
         H/hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Qbyh24rDSOpnc28B+urcNxm6nyHlMcFvkqZe1ThbgEu+1eA6f
	VnSihxdxXw7r2/HjIHg8jXI=
X-Google-Smtp-Source: ABdhPJxRLdwMEL2KKfy4pjhzvVsc6zndqO+9jq5DACuRljOW4IfKG2tw+sTi9BZSOiqEYJ21LblT/g==
X-Received: by 2002:a05:6830:4da:: with SMTP id s26mr1363296otd.77.1620266451644;
        Wed, 05 May 2021 19:00:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:71cf:: with SMTP id z15ls292618otj.2.gmail; Wed, 05 May
 2021 19:00:51 -0700 (PDT)
X-Received: by 2002:a05:6830:2336:: with SMTP id q22mr1433450otg.346.1620266451196;
        Wed, 05 May 2021 19:00:51 -0700 (PDT)
Date: Wed, 5 May 2021 19:00:50 -0700 (PDT)
From: Collin Bennett <funplace65@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <b79aa183-6374-4600-a2a6-65f3dbe26358n@googlegroups.com>
Subject: Checking lines in make process
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_260_2147182335.1620266450626"
X-Original-Sender: funplace65@gmail.com
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

------=_Part_260_2147182335.1620266450626
Content-Type: multipart/alternative; 
	boundary="----=_Part_261_157154745.1620266450626"

------=_Part_261_157154745.1620266450626
Content-Type: text/plain; charset="UTF-8"

In the sample below, what is doing the 'checking lines'? Any suggestion on 
how to modify this process manually?


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b79aa183-6374-4600-a2a6-65f3dbe26358n%40googlegroups.com.

------=_Part_261_157154745.1620266450626
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In the sample below, what is doing the 'checking lines'? Any suggestion on =
how to modify this process manually?<div><br></div><div><br></div><div><p>m=
ake[3]: Entering directory `/Volumes/OpenWrt/openwrt/tools/libelf'</p>
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
<p>make[2]: *** [tools/libelf/compile] Error 2</p></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/b79aa183-6374-4600-a2a6-65f3dbe26358n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/b79aa183-6374-4600-a2a6-65f3dbe26358n%40googleg=
roups.com</a>.<br />

------=_Part_261_157154745.1620266450626--

------=_Part_260_2147182335.1620266450626--
