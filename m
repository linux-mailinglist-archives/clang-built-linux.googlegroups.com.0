Return-Path: <clang-built-linux+bncBCS7XUWOUULBBSGTXGBAMGQEWDP2ZUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B07733A7B4
	for <lists+clang-built-linux@lfdr.de>; Sun, 14 Mar 2021 20:53:46 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id e12sf7908939plh.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Mar 2021 12:53:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615751624; cv=pass;
        d=google.com; s=arc-20160816;
        b=LV334MI9BiYLlUBSwLihVafm5ZTmgZkYFRg8XJPzT7L/MIEbYTMum7gX2yuOB7GuDq
         3i90BxssKYiZHUwOgjpsFR/23LNQN/QCi01HwZhXDIyKBpnDKq/NTn0RsupbiOzJcPmS
         EszEkOx+gLGHGduVtqVGwlYtbhdW7fE+iE3nrBzwP20fDqovcblpj6mYFOziMr3BFau/
         cuYtD4/QcZtf66EygiW9aGwU+upihknsD/vcuomJS41fCIszYA4YtCuQ0vPwWyYgmGGA
         09kJ6LYVSMx2i6IKTtSYILKsx+fw1a4jbMZkQdP+iHzoAMRf6UADUoLEqwjh3TJVxrX5
         v5Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JyMufaLcW+3rQQutDkhtYuYeTylUK+UM+uUJCr+TfDE=;
        b=NC3AoiKXn5faIFNRhSGcjfWqlkNBCKxwkeMwQ1bdE4qrCYFgdqmetl1QlsgZN1vTkP
         Ujp2bM5IQJ3bvHj/YhZwdCRr6bzuy9jl3sn6/q8cqIrmD5JstqbzoQu+86XrejYIkCbZ
         3A98lxkRUufG7BNNfRMPt7moHn/XPJesviO5z/nkDDPgbbMUtRLscaEwaMo16FIGvFAX
         Ed/m0iL5HyARU609KAeHeQ39i5CkSWf4li8BJ/GDu6m1FfmLAiG1wnruy4bMT1dpkH8J
         AJlWyAoA1EJK8sDRWd9XVFK2ZQLfdY7WjqJZTBme0OG7WVYUVi0EpwMWQhzoT+dyC4Ry
         tlcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XsvH52l5;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JyMufaLcW+3rQQutDkhtYuYeTylUK+UM+uUJCr+TfDE=;
        b=WXwbbGOdWHYa12GGXlkp5c70vKZUw7rOX6sHpaueqVOjGiIkHNqn4cvUF1M4G5W5Rm
         JmfhCa+EbCGZkIoK9PnQ0l4S/lTjNIlsXlmfIhq19+6Gzc9aPfKfivbBlKk+SCleqU5d
         3ahIK061WT1qvtDdKdi/SdcQlff3vvV0NEUUKWdVrjxxb0ViTW/VEWSO74Melgc/PaV4
         8SNujvMWD9gwZ7eyo8AB9SNT5ntarvOgnF+5kF0R4vy7cWpcrsJaX3G7pop5k1JmGHQv
         pVH7ogA93J7XcqVn+RVVY/r//F2sWC+IcQbig/Jcz7+aikNYw1FaWJElxbeugN2A+/B1
         L1rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JyMufaLcW+3rQQutDkhtYuYeTylUK+UM+uUJCr+TfDE=;
        b=YjdhCZNsyaH4rybFb4BtEHwl71K0PxRBfvNob/W+wIEEtrAw74cFTggkeaXZUv7UUv
         oU/dFcGv0pX0gzwpOk5pGyNDDzO2T7h+2Vq65zUS6U1cQGyfR8acLUWcmFb/OqCdUfe6
         hTWAS+6KgVtbPdmI/xIEdbYC8JFoX/59Q/tgPUA9XdHPgDKILQkIMrK6UmhcddozT3/D
         ++ZcoiakRRMJ5BR7JO4HDXFur2DDEJTZJhdPtlH5fQZ+ekHZI/wbherBRJc93W2M2JaK
         AfknJW1BLhwWsH4i2mdxHZLoQ874rC3qcaOY8b/O5jBYYINrzXuAQ3TGlhBgwum4PMgO
         Kwag==
X-Gm-Message-State: AOAM531wpAE7oWb2CNqSrpLitc78VKGkK6Z4FqtkbtEYReDoTGsnDvzI
	mx4QcP+5o60jBirrSHtdFnY=
X-Google-Smtp-Source: ABdhPJyt3GAVcfM8a2vsButm799HorgxtM+eHAuDaWxWLrSpsQ1niEmtZohLU1V7uNSrr3P/aN1N9Q==
X-Received: by 2002:a17:90a:ce03:: with SMTP id f3mr9106506pju.195.1615751624557;
        Sun, 14 Mar 2021 12:53:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2147:: with SMTP id s7ls5425181pgm.3.gmail; Sun, 14 Mar
 2021 12:53:44 -0700 (PDT)
X-Received: by 2002:a62:5b43:0:b029:1ef:21ad:846 with SMTP id p64-20020a625b430000b02901ef21ad0846mr7623353pfb.51.1615751623911;
        Sun, 14 Mar 2021 12:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615751623; cv=none;
        d=google.com; s=arc-20160816;
        b=OW/dlW6px9igJTRPl9xlKsJJ/HUvrxY+0CsV8FJcImR2yDTcaardSbd7AqWo2wuJxG
         q1IdS3ww2JGFFzqhgPpwgPv/Tq8b4/CHVhgBnmUe131IeDECVQt8j0sJQTvXbKZf1GMg
         X6bXaolZ+jRJ5F3SrBAoNBTSjvE3kfCe7vS+h3+zz6nSAPWHiCmQ5XBXLSrRREQ5JIgD
         Cd5+1i2297FiEeaaSn3NVx6NFnM3WJFd73DPPuy6+iUtiFsNvkmsCTuTkmEJ5zY5FTKH
         LCwX9D1ZM6ufc8MPzxxbHaiycoDBubJIVoLuzWu2I/EKYHWUiduonUShQ/yR7J/q2OX5
         ShNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XGrdRL3xUKMO8wSmtHPGgOfp9djmxjeN7aILvT6z3AY=;
        b=g/3N7xwImNV9E0GkBz4j1UkZ44zQY7tbFVa5afLK3bsSPi6SYJZ5GdAydlDQ+EOQoo
         1HNIOjvhcae97v1/7BLHdH7bjw+LQeXSrqvqc3tYa4XGeB0J8yCd5Phug16Mr7LevXp+
         oyI95cCy65N7aWtgVdXzjVsa0dWgVxbIK3LZhoCSq1QE9XvxwJ9/ER+s4+Crl/I3kVcU
         412ZhzWms3FU7u+DL7M6S8aeZSMi0/29o/9N5jVrhc04fd8NWICDGUSJ4x3HGUxK+22p
         B5C3eMcDv1mC/2Kw1B7uBDNMKPJjT92aaNk962zdigWH4R+6fP3DxAnvKydx/tXePGi1
         m6aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XsvH52l5;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id 131si575109pfa.2.2021.03.14.12.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Mar 2021 12:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id x7-20020a17090a2b07b02900c0ea793940so13223291pjc.2
        for <clang-built-linux@googlegroups.com>; Sun, 14 Mar 2021 12:53:43 -0700 (PDT)
X-Received: by 2002:a17:902:ead5:b029:e5:bd04:bf48 with SMTP id
 p21-20020a170902ead5b02900e5bd04bf48mr8352532pld.38.1615751623525; Sun, 14
 Mar 2021 12:53:43 -0700 (PDT)
MIME-Version: 1.0
References: <202103150348.LuJPYzhc-lkp@intel.com>
In-Reply-To: <202103150348.LuJPYzhc-lkp@intel.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Sun, 14 Mar 2021 12:53:32 -0700
Message-ID: <CAFP8O3KdKdnkTCyAGCQdJ1NVLRuXnx1NtknKG4YCSfqtONR2SQ@mail.gmail.com>
Subject: Re: clang-13: error: unsupported option '-fpatchable-function-entry=8'
 for target 'riscv64-unknown-linux-gnu'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000009117c805bd847dc0"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XsvH52l5;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031
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

--0000000000009117c805bd847dc0
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 14, 2021 at 12:08 PM kernel test robot <lkp@intel.com> wrote:

> CC: linux-kernel@vger.kernel.org
> TO: Guo Ren <guoren@linux.alibaba.com>
> CC: Palmer Dabbelt <palmerdabbelt@google.com>
>
> Hi Guo,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> master
> head:   88fe49249c99de14e543c632a46248d85411ab9e
> commit: afc76b8b80112189b6f11e67e19cf58301944814 riscv: Using
> PATCHABLE_FUNCTION_ENTRY instead of MCOUNT
> date:   8 weeks ago
> config: riscv-randconfig-r003-20210314 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
> 7ee96429a0b057bcc97331a6a762fc3cd00aed61)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         #
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=afc76b8b80112189b6f11e67e19cf58301944814
>         git remote add linus
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout afc76b8b80112189b6f11e67e19cf58301944814
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=riscv
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> clang-13: error: unsupported option '-fpatchable-function-entry=8' for
> target 'riscv64-unknown-linux-gnu'
>

I implemented clang -fpatchable-function-entry for x86 and AArch64. I am
working on the RISC-V support.
It should be available from 13.0.0 onwards.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3KdKdnkTCyAGCQdJ1NVLRuXnx1NtknKG4YCSfqtONR2SQ%40mail.gmail.com.

--0000000000009117c805bd847dc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Mar 14, 2021 at 12:08 PM kernel t=
est robot &lt;<a href=3D"mailto:lkp@intel.com">lkp@intel.com</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">CC: <a href=3D"mailto:linux-kernel@vger.kernel.org" target=3D"_=
blank">linux-kernel@vger.kernel.org</a><br>
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

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAFP8O3KdKdnkTCyAGCQdJ1NVLRuXnx1NtknKG4YCSfqtO=
NR2SQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAFP8O3KdKdnkTCyAGCQdJ1NVLRuXnx1Ntk=
nKG4YCSfqtONR2SQ%40mail.gmail.com</a>.<br />

--0000000000009117c805bd847dc0--
