Return-Path: <clang-built-linux+bncBCS7XUWOUULBBPHYXGBAMGQEWR77Y7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id F22C633A826
	for <lists+clang-built-linux@lfdr.de>; Sun, 14 Mar 2021 22:12:29 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id o16sf5121032pjy.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Mar 2021 14:12:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615756348; cv=pass;
        d=google.com; s=arc-20160816;
        b=c7NypGY0+jDkpvy1/CzGQNm7DEi9DMehZDZDM6hgkXwfTkvrVZTj6kY6/omnNIsbh4
         v5UG5WzBdb5o8vEuI/mAZqGkM60LGNaLRv7FpjVRUZaRJ8W9Xy9n2+kavbUGFBMbnE+W
         OEgL6jhjurYugLIhTz9R3n75OhY8z34WIb5Fd4O6yTY6CJlclqTjTJD03JH3SX3xT59a
         X2t0KqnXrXgdQUM8czNCIINnRxAcc6M4skqfi1XlyMSfmZnMys/nqSXTL5W1RGp77rqT
         U0un/XB/PZ79h1P5jEB4fs5jbJcjVk3W81EXsHWshQ7XrlMG6u+wrQrk48syfpG9zf98
         wN5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ov8ZuShwqXH/OvUy3ZcTdZM6i7qdbzX5i2xvvzHkxfw=;
        b=TOoa+5A0v4M2oKY4YFAnc4Z2wK1NDiNXJrGjaSLJ6w82ujJh3SY1/oJ9q4XbkpwLO3
         DNDN4n0u0y+w+TU+u7RyTNr0M/Fns4xi6P5xuKf4+kEau+hIOH0wwCgGp2WRnZtQuRiS
         YoOjKGbT6uRDqlFhbHF+gzFEd1B3S/xz0GY773Ozs2kBcj7IZeretKlGd6rGltB/EbLP
         YKAAFhFa6V/R/U2GrzEQLlXHHTxCbVVY/W7Cr8UOULnl2b+/4ImLesNa4F45PTQqPFxY
         +qDFUhAaBcO2ieMUO3wuSR2qFcV1NVg53U27VSC3Z3HMJYyd1OXr65KvJN2CzvyFTqbu
         NRPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GvUaFLPg;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ov8ZuShwqXH/OvUy3ZcTdZM6i7qdbzX5i2xvvzHkxfw=;
        b=SSYIOd4vW90H5RkxzG9FqGaD2hIPzTy8NM0iZe575kCVQqmV1ra7ZqIQB5LDXa5nfK
         o9gEEAm6+ZfHWBVt0QmyhKdPZwtvzbanRXgeAQXuwPHBuDMC6RnGERPlBPcgdo7Xt8h3
         SDYNY1EAGHRjlnCDDjd4Lckrzy39aOg7OvZ2b5VeqRTSuS9mza5jBASNYoK0FUj8MDq/
         Cuvwu857rgO3mJ9LTxqhRgh096czivuR3Beu3Ft/kH/nmv90+MSxYy7aJlyAHwAnISS7
         +ydHniNo3HPv3I6RSCfZ1LdNRwM6YV3vkkHU5l5ZFPpcLR1sp7en/VqSBp6wnpPaNi5C
         N6yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ov8ZuShwqXH/OvUy3ZcTdZM6i7qdbzX5i2xvvzHkxfw=;
        b=JFNBNmtyN3fN+vEM69N7i2F4QqDm1aA+7fGb2rLgBbiwNoA3a38RGngYrYHghdZmqH
         9cTqCCgb13kaOsJikh4G9+IlOYbJCdMfB3T7hj/vpA0IEAoj8MBcxxcNI8J+hO5y8omx
         M8xNmA180RwIerLOPADHBlt7BJslTkUVXjZzYmuG5qgkB8HiUfO1NUR2DwkK0mr7n1lh
         Iv1e9a96jKlqGA+IthTcy8R8NKETmhELxE01MgrRi1OfuBatypx7/QnF/bjg2M0dJ42/
         oYoyWqFk9S6A84uOENwoY/ZN+omR7cz2Uq3rfvm187g3l1xl+w4dr5Bw+j3PjMjSIS0B
         RKJw==
X-Gm-Message-State: AOAM531/JU3Xs8U4+T80UiSHU3Jb0yNrNwUQHKN0SBBdNKaMuahTgkkS
	xhK/shzUof1SXad6RTSaRR4=
X-Google-Smtp-Source: ABdhPJwIrYyYGwmzfqs30U5BU+yUpGE8mwd7JlK/D/ihS7xYuFBE+1dzLXILWABZWdEp64H6e20+XQ==
X-Received: by 2002:a17:90b:38f:: with SMTP id ga15mr9185161pjb.149.1615756348772;
        Sun, 14 Mar 2021 14:12:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:63d8:: with SMTP id n24ls5452003pgv.8.gmail; Sun, 14 Mar
 2021 14:12:28 -0700 (PDT)
X-Received: by 2002:aa7:8042:0:b029:208:d4d8:2418 with SMTP id y2-20020aa780420000b0290208d4d82418mr164808pfm.21.1615756348251;
        Sun, 14 Mar 2021 14:12:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615756348; cv=none;
        d=google.com; s=arc-20160816;
        b=B07UtjB1UoZoy4xxbshTuijKNYWVICZ9/oNvcdHOVsISXMaOCWcGPuS4EGWp5fyJb6
         TYKEqOqmMguMRWR/nIiOALaRlsIFr/DDEwQEpT8ke+vGS0UjmE0kVuEgdkZpUjZ9m487
         u8sy5A4nFRyZBooFEHEBIVpfkP2hZyp6oa9icK9JnjZA/+tyqIEc0X15PrFH0yjrQCyj
         x+67FRPaK7qutwZUQHq1DLBfQKIiJyg/uB4jqm4sZG7XI2cdILqip2/tGRTSpNSD2k8J
         T3LZdhriSidokp74aTEmxDgrduzSISYpfYK5Y1oV/jWd+KiJVAbgkw7L0vH5kSo/H7xl
         osjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RvhDgGPR/wRDtyawzQYWh0xbaXNWrgNA3mvXL4ymZJI=;
        b=sGxX7VVdt8kyY7L3OdM0kRx6yMzHqyfMRbXy0RXIhzNyGc8U803Tf8SlYHppdI+DU2
         VLce96nAnD5LWu7Y648quY5HHgU6FX4ZyWSma5jvgUKpGeBdv9P0sraU4yh0DR14qy6Y
         CrHiPdA2or95gRoDy/zvTTVqZqIsewRUDUKSnwjd2OU43gRBkymWOjDlI9VyM05QRAXs
         iuceCElLHwHxmu+kUI6nOG82D1wlEEp1ouRTSQBs8XbezHP/v5pWvokEEayr2ywz3D7d
         NC5t2qAXWZtQfcMrKaPi+3n57dPaux7YDPArlNrbvggCBotI/KZdgFxJ4bQhNjyw/osg
         TpsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GvUaFLPg;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id r7si1487298pjp.3.2021.03.14.14.12.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Mar 2021 14:12:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id j6so14300346plx.6
        for <clang-built-linux@googlegroups.com>; Sun, 14 Mar 2021 14:12:28 -0700 (PDT)
X-Received: by 2002:a17:90b:3550:: with SMTP id lt16mr9275032pjb.47.1615756347824;
 Sun, 14 Mar 2021 14:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <202103150348.LuJPYzhc-lkp@intel.com> <CAFP8O3KdKdnkTCyAGCQdJ1NVLRuXnx1NtknKG4YCSfqtONR2SQ@mail.gmail.com>
In-Reply-To: <CAFP8O3KdKdnkTCyAGCQdJ1NVLRuXnx1NtknKG4YCSfqtONR2SQ@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Sun, 14 Mar 2021 14:12:16 -0700
Message-ID: <CAFP8O3KRG_PJFjEJh1+PagqHnpEO+5i_e4K7Mh6r3TGjM=EJaQ@mail.gmail.com>
Subject: Re: clang-13: error: unsupported option '-fpatchable-function-entry=8'
 for target 'riscv64-unknown-linux-gnu'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000028416605bd85972a"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GvUaFLPg;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62d
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

--00000000000028416605bd85972a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 14, 2021 at 12:53 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@goog=
le.com> wrote:

> On Sun, Mar 14, 2021 at 12:08 PM kernel test robot <lkp@intel.com> wrote:
>
>> CC: linux-kernel@vger.kernel.org
>> TO: Guo Ren <guoren@linux.alibaba.com>
>> CC: Palmer Dabbelt <palmerdabbelt@google.com>
>>
>> Hi Guo,
>>
>> FYI, the error/warning still remains.
>>
>> tree:
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git maste=
r
>> head:   88fe49249c99de14e543c632a46248d85411ab9e
>> commit: afc76b8b80112189b6f11e67e19cf58301944814 riscv: Using
>> PATCHABLE_FUNCTION_ENTRY instead of MCOUNT
>> date:   8 weeks ago
>> config: riscv-randconfig-r003-20210314 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
>> 7ee96429a0b057bcc97331a6a762fc3cd00aed61)
>> reproduce (this is a W=3D1 build):
>>         wget
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
>> -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install riscv cross compiling tool for clang build
>>         # apt-get install binutils-riscv64-linux-gnu
>>         #
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3Dafc76b8b80112189b6f11e67e19cf58301944814
>>         git remote add linus
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>         git fetch --no-tags linus master
>>         git checkout afc76b8b80112189b6f11e67e19cf58301944814
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross
>> ARCH=3Driscv
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>> >> clang-13: error: unsupported option '-fpatchable-function-entry=3D8' =
for
>> target 'riscv64-unknown-linux-gnu'
>>
>
> I implemented clang -fpatchable-function-entry for x86 and AArch64. I am
> working on the RISC-V support.
> It should be available from 13.0.0 onwards.
>

Created https://reviews.llvm.org/D98610

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3KRG_PJFjEJh1%2BPagqHnpEO%2B5i_e4K7Mh6r3TGjM%3DEJaQ=
%40mail.gmail.com.

--00000000000028416605bd85972a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Mar 14, 2021 at 12:53 PM F=C4=81n=
g-ru=C3=AC S=C3=B2ng &lt;<a href=3D"mailto:maskray@google.com">maskray@goog=
le.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Sun, =
Mar 14, 2021 at 12:08 PM kernel test robot &lt;<a href=3D"mailto:lkp@intel.=
com" target=3D"_blank">lkp@intel.com</a>&gt; wrote:<br></div><div class=3D"=
gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">CC: <a href=
=3D"mailto:linux-kernel@vger.kernel.org" target=3D"_blank">linux-kernel@vge=
r.kernel.org</a><br>
TO: Guo Ren &lt;<a href=3D"mailto:guoren@linux.alibaba.com" target=3D"_blan=
k">guoren@linux.alibaba.com</a>&gt;<br>
CC: Palmer Dabbelt &lt;<a href=3D"mailto:palmerdabbelt@google.com" target=
=3D"_blank">palmerdabbelt@google.com</a>&gt;<br>
<br>
Hi Guo,<br>
<br>
FYI, the error/warning still remains.<br>
<br>
tree:=C2=A0 =C2=A0<a href=3D"https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git" rel=3D"noreferrer" target=3D"_blank">https://git.kern=
el.org/pub/scm/linux/kernel/git/torvalds/linux.git</a> master<br>
head:=C2=A0 =C2=A088fe49249c99de14e543c632a46248d85411ab9e<br>
commit: afc76b8b80112189b6f11e67e19cf58301944814 riscv: Using PATCHABLE_FUN=
CTION_ENTRY instead of MCOUNT<br>
date:=C2=A0 =C2=A08 weeks ago<br>
config: riscv-randconfig-r003-20210314 (attached as .config)<br>
compiler: clang version 13.0.0 (<a href=3D"https://github.com/llvm/llvm-pro=
ject" rel=3D"noreferrer" target=3D"_blank">https://github.com/llvm/llvm-pro=
ject</a> 7ee96429a0b057bcc97331a6a762fc3cd00aed61)<br>
reproduce (this is a W=3D1 build):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wget <a href=3D"https://raw.githubusercontent.c=
om/intel/lkp-tests/master/sbin/make.cross" rel=3D"noreferrer" target=3D"_bl=
ank">https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cro=
ss</a> -O ~/bin/make.cross<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 chmod +x ~/bin/make.cross<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # install riscv cross compiling tool for clang =
build<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # apt-get install binutils-riscv64-linux-gnu<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # <a href=3D"https://git.kernel.org/pub/scm/lin=
ux/kernel/git/torvalds/linux.git/commit/?id=3Dafc76b8b80112189b6f11e67e19cf=
58301944814" rel=3D"noreferrer" target=3D"_blank">https://git.kernel.org/pu=
b/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3Dafc76b8b80112189b6f1=
1e67e19cf58301944814</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git remote add linus <a href=3D"https://git.ker=
nel.org/pub/scm/linux/kernel/git/torvalds/linux.git" rel=3D"noreferrer" tar=
get=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/lin=
ux.git</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git fetch --no-tags linus master<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git checkout afc76b8b80112189b6f11e67e19cf58301=
944814<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # save the attached .config to linux build tree=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dc=
lang make.cross ARCH=3Driscv <br>
<br>
If you fix the issue, kindly add following tag as appropriate<br>
Reported-by: kernel test robot &lt;<a href=3D"mailto:lkp@intel.com" target=
=3D"_blank">lkp@intel.com</a>&gt;<br>
<br>
All errors (new ones prefixed by &gt;&gt;):<br>
<br>
&gt;&gt; clang-13: error: unsupported option &#39;-fpatchable-function-entr=
y=3D8&#39; for target &#39;riscv64-unknown-linux-gnu&#39;<br></blockquote><=
div><br></div><div>I implemented clang -fpatchable-function-entry for x86 a=
nd AArch64. I am working on the RISC-V support.</div><div>It should be avai=
lable from 13.0.0 onwards.</div></div></div>
</blockquote></div><div><br></div><div>Created <a href=3D"https://reviews.l=
lvm.org/D98610">https://reviews.llvm.org/D98610</a><br></div><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAFP8O3KRG_PJFjEJh1%2BPagqHnpEO%2B5i_e4K7Mh6r3=
TGjM%3DEJaQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAFP8O3KRG_PJFjEJh1%2BPagqHnp=
EO%2B5i_e4K7Mh6r3TGjM%3DEJaQ%40mail.gmail.com</a>.<br />

--00000000000028416605bd85972a--
