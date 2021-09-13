Return-Path: <clang-built-linux+bncBDFYZQEPUYPBBM7VQKFAMGQEQCLTWOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AD940B287
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 17:07:32 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id x13-20020a54400d0000b029026825ff437csf8959976oie.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 08:07:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631632051; cv=pass;
        d=google.com; s=arc-20160816;
        b=L2uCjaelpzfXSs8IDoE/hoBmIwcAI8ChEkVtlQ/02+8ASIxZPYRyJG9hQP/RjnXVEW
         bsFdrCa98z4uN7J4NPX+TmphunP3EybTPvMGGNBwdccyl2PxAucmsrftUQCraLZnjrw4
         s/PrGhbOuXuC9b/2v6RgYKp1eEQOb+b4s63+wmQbJRe3oqYnmq4x8Kn0K5bz5oDpoitM
         z7kst8vFNxuJLjpOKHq/FOl3pDPAAnUip1Io1GSf1hGEAH5AhB9oPLR1yyHWcy9e/q/J
         FO6KT78q4X40GXk2fy8YysVhd8mhJqt/C0SRwU1n+SBRD5lNPy8jfx/8tIVPlKGN6lNN
         QXlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=mG26KmI0o3pUa+08buYakQis+bEwmkT7ptqDCHHGSxY=;
        b=UqJbI/EZx/dyK9oX+Inuu46AgY+qwrU+l2xhlLBp5nmi/Ht4nEQ4THZKC88h5x9Jg8
         72OEmbie3b4LEcr25JXmwDhmes66x+7qHB3aZOJES1IFUXe0nVeuA5+eeAI+StpPJdKg
         CvthdtFlYde1jK1cgU2eKC+XUB694GQ4iVYtVUHcka1omT1AVOB/KJrgn5/uVfsbXUPz
         9ILhW19ynCr9iN3guueDzVosAK84pgn5qkTt6Yuy9zJEVvexjRn97ZjvldS/pzmBzk9I
         Htl6K09QiPQsaW5r7OTjJuGzHw8zaZkhLy1+sfemG4oSQ+oY8G/UDnS+2bNNOuc3K6fV
         bdaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BR4EMmDi;
       spf=pass (google.com: domain of diana.picus@linaro.org designates 2607:f8b0:4864:20::e31 as permitted sender) smtp.mailfrom=diana.picus@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mG26KmI0o3pUa+08buYakQis+bEwmkT7ptqDCHHGSxY=;
        b=QS+fmjkD+7/T0kG+99R36V8ZfZ8FpXMqXhpdBgf2D8bI2vz5bSmAcxcqxy5DFz9Yut
         Ju95QlgHvar89BAo7cCBe3KUqDqQjS6l3QIzy9KdlGENQ9wxzwsgruTz+3m6PueOoG0I
         Aa8D3s1BPZOf6d0Q8sF1LhwWjSLk2BAnACWxLK+6nA4CTazPm2uGGQjUpH/faTcuAOcn
         FesvVlRs3c9aYdk2W4Fb99F0qhQsoGfNxrWpxs5t4YuHQFywRCdn6cBfPeDEIqMAJ0ew
         fKX0CxCH+MBchdbGQgjSb1CKRsV+eszCWV2YSPzD4VYlw1FMt29EeYNaozqBYqG/kZXa
         wj5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mG26KmI0o3pUa+08buYakQis+bEwmkT7ptqDCHHGSxY=;
        b=GjqDBvmuYCJCkTBNyfMRqqY7oISwyqTiEPg9FPJXU2/focJZwBP2vd4f/0HkoE/F5z
         2NPpgBcbH0HE2J0Lqs6I5W7Mm/EaY1X9MbtSkDtwhh/0g77YfYef1KrGtPUweouNt4zY
         DSU+rC5wr7yjHA4BRjaszq5s+SM2uTu7iDOBBx1KqsM+TPelz/6kSWHrm8QpKXdSlUx1
         s3uv+Y9ccQXlqmlxhP2pa4i0JIKgc3FTbLF1uw8CFEE9+3/otDMzGFnuwmxecWOdAlWw
         whVB3bEMjieUyT8zLS9ApxQCG9uF0HCUia9ElYxPqO6ExxdzHhwZX5MPTufSNgiCKVO9
         5Phw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Pf5mQZS1VUvvCHxxnIighVJYfJJd9NnwRi7MSsYRl7gGeZ8Yp
	GJ+DfcwdPzubH0SI2XpjaK4=
X-Google-Smtp-Source: ABdhPJxquPKzGV9VHcGZ+VzBLj6fAy2jrbmoTDVCWSBO5LKOON/NDc5YeNZnx8z1igj32H7CnA00lQ==
X-Received: by 2002:a9d:4111:: with SMTP id o17mr14781911ote.355.1631632051106;
        Tue, 14 Sep 2021 08:07:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7b4d:: with SMTP id f13ls3191395oto.11.gmail; Tue, 14
 Sep 2021 08:07:30 -0700 (PDT)
X-Received: by 2002:a05:6830:124b:: with SMTP id s11mr14824044otp.90.1631632050883;
        Tue, 14 Sep 2021 08:07:30 -0700 (PDT)
Received: by 2002:a05:6808:61a:b0:267:9c01:48fd with SMTP id 5614622812f47-26dbc04f441msb6e;
        Mon, 13 Sep 2021 00:13:09 -0700 (PDT)
X-Received: by 2002:a17:90b:124c:: with SMTP id gx12mr11529685pjb.106.1631517189201;
        Mon, 13 Sep 2021 00:13:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631517189; cv=none;
        d=google.com; s=arc-20160816;
        b=tKRBMidAjjuX7PryD+KamYrGHs5/Oo7Z88DmIsxhK01qFFdDvgXQZ7z8H+RflE98Ny
         JufVloefDNXqVbzmb+Z9zx4uqXWFmoVLDdlW5igK7dh0KKNBkUYQqd7udSFb4jYfM8eX
         +NcyZ2Px2fp2lZs8WQRPFhStl5qdFbQtygE4E+rZw2ixcJbv0fsArIUIb7Y0tEiarj8K
         oGhBC4fEvg4Q0N08VLgx6CT+hwW9zDOJTytLVdHHgVVt5olq2YiNqLnOg6ALlpcyIcYO
         9QkFzqN2GZOZNuh4iq5yNoh4fD9prlXK1Usi/2zj0daiv8xjvnSGz/A/Y3eqJWIgnKx6
         gC9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x28LIUcQIVM+Y+oXnJ6GIO60BjF6wVX+TY/HsB+3yAc=;
        b=nX9ncBQEqmappp1Z7iSf29GoWhG2Y9lyYF1IqCqC73Z1GFAd+oY1xP04gpWSOhPGE+
         A/yLhHlSiAm96haWtI/Axa8+IybLiA70oLQJBeZt3Ee5Px2Q0/RMFdgjmf9lb2OhG2I5
         mAO7Gmcsg8W8aCFJwUXnDZ6L2pMqDaSqjLoxwtYoFloTJKtSQ3DoHRuFTLflGEhc/3k2
         DXqrCfffyClDDEfQIMsByJKuyMNS/wh0GVz59eV6E1XuXv70x0NZI47CO+yB0jXlWltV
         wAZbKfWxs6lrlGeJHIK7sKyj00UQlKyFBPoKB/JQwyBWanKidAJnkv3Chun3hOjnPvzi
         k1AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=BR4EMmDi;
       spf=pass (google.com: domain of diana.picus@linaro.org designates 2607:f8b0:4864:20::e31 as permitted sender) smtp.mailfrom=diana.picus@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com. [2607:f8b0:4864:20::e31])
        by gmr-mx.google.com with ESMTPS id n63si700641pfd.3.2021.09.13.00.13.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 00:13:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of diana.picus@linaro.org designates 2607:f8b0:4864:20::e31 as permitted sender) client-ip=2607:f8b0:4864:20::e31;
Received: by mail-vs1-xe31.google.com with SMTP id s15so7495880vst.13
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 00:13:09 -0700 (PDT)
X-Received: by 2002:a05:6102:3238:: with SMTP id x24mr2147527vsf.11.1631517188200;
 Mon, 13 Sep 2021 00:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <1723771714.8049.1630601502888@localhost> <CAKwvOdmSW1Ntom389FD3qOC=iTCwJH=g5MiuRdeftxMdwbRBbg@mail.gmail.com>
In-Reply-To: <CAKwvOdmSW1Ntom389FD3qOC=iTCwJH=g5MiuRdeftxMdwbRBbg@mail.gmail.com>
From: Diana Picus <diana.picus@linaro.org>
Date: Mon, 13 Sep 2021 11:11:55 +0200
Message-ID: <CAFYwA27_YcNO3zebCAXNZ+Emb2vYNtjeTaoDqm17KMh=23H3DQ@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
 - Build # 10 - Successful!
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: ci_notify@linaro.org, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>, 
	tcwg-validation@linaro.org, clang-built-linux@googlegroups.com, 
	llvm@lists.linux.dev, arnd@linaro.org, 
	Linaro Toolchain Mailman List <linaro-toolchain@lists.linaro.org>
Content-Type: multipart/alternative; boundary="00000000000072b39d05cbdb3281"
X-Original-Sender: diana.picus@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=BR4EMmDi;       spf=pass
 (google.com: domain of diana.picus@linaro.org designates 2607:f8b0:4864:20::e31
 as permitted sender) smtp.mailfrom=diana.picus@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

--00000000000072b39d05cbdb3281
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

We have changed our infrastructure to email llvm@lists.linux.dev on the 6th
of September [1]. The email you reported seems to have been sent before
that (on the 2nd of September). Newer emails ought to go to the right
place, please let us know if you find emails to @googlegroups from jobs
started after the 6th of September.

Cheers,
Diana

[1]
https://git.linaro.org/toolchain/jenkins-scripts.git/commit/?id=18e73813f104f4d93b8f2b91c9c676b23cb6adea

On Fri, 10 Sept 2021 at 21:13, Nick Desaulniers <ndesaulniers@google.com>
wrote:

> Hi Maxim,
> We're looking to turn down our old @googlegroups.com mailing list. Any
> chance these reports can instead be sent to llvm@lists.linux.dev so
> that they are archived by lore.kernel.org?
>
> On Thu, Sep 9, 2021 at 10:20 PM <ci_notify@linaro.org> wrote:
> >
> > Successfully identified regression in *linux* in CI configuration
> tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig.  So far, this commit
> has regressed CI configurations:
> >  - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
> >
> > Culprit:
> > <cut>
> > commit c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
> > Author: Slark Xiao <slark_xiao@163.com>
> > Date:   Tue Aug 31 10:40:25 2021 +0800
> >
> >     net: Add depends on OF_NET for LiteX's LiteETH
> >
> >     Current settings may produce a build error when
> >     CONFIG_OF_NET is disabled. The CONFIG_OF_NET controls
> >     a headfile <linux/of.h> and some functions
> >      in <linux/of_net.h>.
> >
> >     Signed-off-by: Slark Xiao <slark_xiao@163.com>
> >     Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> > </cut>
> >
> > Results regressed to (for first_bad ==
> c3496da580b0fc10fdeba8f6a5e6aef4c78b5598)
> > # reset_artifacts:
> > -10
> > # build_abe binutils:
> > -9
> > # build_llvm:
> > -5
> > # build_abe qemu:
> > -2
> > # linux_n_obj:
> > 29873
> > # linux build successful:
> > all
> > # First few build errors in logs:
> >
> > from (for last_good == a9e7c3cedc2914f63cd135b75832b9bf850af782)
> > # reset_artifacts:
> > -10
> > # build_abe binutils:
> > -9
> > # build_llvm:
> > -5
> > # build_abe qemu:
> > -2
> > # linux_n_obj:
> > 29873
> > # linux build successful:
> > all
> > # linux boot successful:
> > boot
> >
> > Artifacts of last_good build:
> https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/build-a9e7c3cedc2914f63cd135b75832b9bf850af782/
> > Artifacts of first_bad build:
> https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/build-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598/
> > Build top page/logs:
> https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/
> >
> > Configuration details:
> >
> >
> > Reproduce builds:
> > <cut>
> > mkdir investigate-linux-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
> > cd investigate-linux-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
> >
> > git clone https://git.linaro.org/toolchain/jenkins-scripts
> >
> > mkdir -p artifacts/manifests
> > curl -o artifacts/manifests/build-baseline.sh
> https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/manifests/build-baseline.sh
> --fail
> > curl -o artifacts/manifests/build-parameters.sh
> https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/manifests/build-parameters.sh
> --fail
> > curl -o artifacts/test.sh
> https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/test.sh
> --fail
> > chmod +x artifacts/test.sh
> >
> > # Reproduce the baseline build (build all pre-requisites)
> > ./jenkins-scripts/tcwg_kernel-build.sh @@
> artifacts/manifests/build-baseline.sh
> >
> > # Save baseline build state (which is then restored in artifacts/test.sh)
> > mkdir -p ./bisect
> > rsync -a --del --delete-excluded --exclude /bisect/ --exclude
> /artifacts/ --exclude /linux/ ./ ./bisect/baseline/
> >
> > cd linux
> >
> > # Reproduce first_bad build
> > git checkout --detach c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
> > ../artifacts/test.sh
> >
> > # Reproduce last_good build
> > git checkout --detach a9e7c3cedc2914f63cd135b75832b9bf850af782
> > ../artifacts/test.sh
> >
> > cd ..
> > </cut>
> >
> > History of pending regressions and results:
> https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
> >
> > Artifacts:
> https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/
> > Build log:
> https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/consoleText
> >
> > Full commit (up to 1000 lines):
> > <cut>
> > commit c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
> > Author: Slark Xiao <slark_xiao@163.com>
> > Date:   Tue Aug 31 10:40:25 2021 +0800
> >
> >     net: Add depends on OF_NET for LiteX's LiteETH
> >
> >     Current settings may produce a build error when
> >     CONFIG_OF_NET is disabled. The CONFIG_OF_NET controls
> >     a headfile <linux/of.h> and some functions
> >      in <linux/of_net.h>.
> >
> >     Signed-off-by: Slark Xiao <slark_xiao@163.com>
> >     Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> > ---
> >  drivers/net/ethernet/litex/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/net/ethernet/litex/Kconfig
> b/drivers/net/ethernet/litex/Kconfig
> > index 265dba414b41..63bf01d28f0c 100644
> > --- a/drivers/net/ethernet/litex/Kconfig
> > +++ b/drivers/net/ethernet/litex/Kconfig
> > @@ -17,6 +17,7 @@ if NET_VENDOR_LITEX
> >
> >  config LITEX_LITEETH
> >         tristate "LiteX Ethernet support"
> > +       depends on OF_NET
> >         help
> >           If you wish to compile a kernel for hardware with a LiteX
> LiteEth
> >           device then you should answer Y to this.
> > </cut>
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/1723771714.8049.1630601502888%40localhost
> .
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
> _______________________________________________
> linaro-toolchain mailing list
> linaro-toolchain@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/linaro-toolchain
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFYwA27_YcNO3zebCAXNZ%2BEmb2vYNtjeTaoDqm17KMh%3D23H3DQ%40mail.gmail.com.

--00000000000072b39d05cbdb3281
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Nick,<div><br></div><div>We have changed our infrastruc=
ture to email <a href=3D"mailto:llvm@lists.linux.dev" target=3D"_blank">llv=
m@lists.linux.dev</a> on the 6th of September [1]. The email you reported s=
eems to have been sent before that (on the 2nd of September). Newer emails =
ought to go to the right place, please let us know if you find emails to=C2=
=A0@googlegroups=C2=A0from jobs started after the 6th of September.</div><d=
iv><br></div><div>Cheers,</div><div>Diana</div><div><br></div><div>[1]=C2=
=A0<a href=3D"https://git.linaro.org/toolchain/jenkins-scripts.git/commit/?=
id=3D18e73813f104f4d93b8f2b91c9c676b23cb6adea" target=3D"_blank">https://gi=
t.linaro.org/toolchain/jenkins-scripts.git/commit/?id=3D18e73813f104f4d93b8=
f2b91c9c676b23cb6adea</a></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, 10 Sept 2021 at 21:13, Nick Desaulni=
ers &lt;<a href=3D"mailto:ndesaulniers@google.com" target=3D"_blank">ndesau=
lniers@google.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Hi Maxim,<br>
We&#39;re looking to turn down our old @<a href=3D"http://googlegroups.com"=
 rel=3D"noreferrer" target=3D"_blank">googlegroups.com</a> mailing list. An=
y<br>
chance these reports can instead be sent to <a href=3D"mailto:llvm@lists.li=
nux.dev" target=3D"_blank">llvm@lists.linux.dev</a> so<br>
that they are archived by <a href=3D"http://lore.kernel.org" rel=3D"norefer=
rer" target=3D"_blank">lore.kernel.org</a>?<br>
<br>
On Thu, Sep 9, 2021 at 10:20 PM &lt;<a href=3D"mailto:ci_notify@linaro.org"=
 target=3D"_blank">ci_notify@linaro.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Successfully identified regression in *linux* in CI configuration tcwg=
_kernel/llvm-master-aarch64-mainline-allmodconfig.=C2=A0 So far, this commi=
t has regressed CI configurations:<br>
&gt;=C2=A0 - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig<br>
&gt;<br>
&gt; Culprit:<br>
&gt; &lt;cut&gt;<br>
&gt; commit c3496da580b0fc10fdeba8f6a5e6aef4c78b5598<br>
&gt; Author: Slark Xiao &lt;<a href=3D"mailto:slark_xiao@163.com" target=3D=
"_blank">slark_xiao@163.com</a>&gt;<br>
&gt; Date:=C2=A0 =C2=A0Tue Aug 31 10:40:25 2021 +0800<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0net: Add depends on OF_NET for LiteX&#39;s LiteETH<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Current settings may produce a build error when<br>
&gt;=C2=A0 =C2=A0 =C2=A0CONFIG_OF_NET is disabled. The CONFIG_OF_NET contro=
ls<br>
&gt;=C2=A0 =C2=A0 =C2=A0a headfile &lt;linux/of.h&gt; and some functions<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 in &lt;linux/of_net.h&gt;.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Slark Xiao &lt;<a href=3D"mailto:sla=
rk_xiao@163.com" target=3D"_blank">slark_xiao@163.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Jakub Kicinski &lt;<a href=3D"mailto=
:kuba@kernel.org" target=3D"_blank">kuba@kernel.org</a>&gt;<br>
&gt; &lt;/cut&gt;<br>
&gt;<br>
&gt; Results regressed to (for first_bad =3D=3D c3496da580b0fc10fdeba8f6a5e=
6aef4c78b5598)<br>
&gt; # reset_artifacts:<br>
&gt; -10<br>
&gt; # build_abe binutils:<br>
&gt; -9<br>
&gt; # build_llvm:<br>
&gt; -5<br>
&gt; # build_abe qemu:<br>
&gt; -2<br>
&gt; # linux_n_obj:<br>
&gt; 29873<br>
&gt; # linux build successful:<br>
&gt; all<br>
&gt; # First few build errors in logs:<br>
&gt;<br>
&gt; from (for last_good =3D=3D a9e7c3cedc2914f63cd135b75832b9bf850af782)<b=
r>
&gt; # reset_artifacts:<br>
&gt; -10<br>
&gt; # build_abe binutils:<br>
&gt; -9<br>
&gt; # build_llvm:<br>
&gt; -5<br>
&gt; # build_abe qemu:<br>
&gt; -2<br>
&gt; # linux_n_obj:<br>
&gt; 29873<br>
&gt; # linux build successful:<br>
&gt; all<br>
&gt; # linux boot successful:<br>
&gt; boot<br>
&gt;<br>
&gt; Artifacts of last_good build: <a href=3D"https://ci.linaro.org/job/tcw=
g_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/=
artifacts/build-a9e7c3cedc2914f63cd135b75832b9bf850af782/" rel=3D"noreferre=
r" target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm=
-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/build-a9e7c3ced=
c2914f63cd135b75832b9bf850af782/</a><br>
&gt; Artifacts of first_bad build: <a href=3D"https://ci.linaro.org/job/tcw=
g_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/=
artifacts/build-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598/" rel=3D"noreferre=
r" target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm=
-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/build-c3496da58=
0b0fc10fdeba8f6a5e6aef4c78b5598/</a><br>
&gt; Build top page/logs: <a href=3D"https://ci.linaro.org/job/tcwg_kernel-=
llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/" rel=3D"noreferre=
r" target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm=
-master-aarch64-mainline-allmodconfig/10/</a><br>
&gt;<br>
&gt; Configuration details:<br>
&gt;<br>
&gt;<br>
&gt; Reproduce builds:<br>
&gt; &lt;cut&gt;<br>
&gt; mkdir investigate-linux-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598<br>
&gt; cd investigate-linux-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598<br>
&gt;<br>
&gt; git clone <a href=3D"https://git.linaro.org/toolchain/jenkins-scripts"=
 rel=3D"noreferrer" target=3D"_blank">https://git.linaro.org/toolchain/jenk=
ins-scripts</a><br>
&gt;<br>
&gt; mkdir -p artifacts/manifests<br>
&gt; curl -o artifacts/manifests/build-baseline.sh <a href=3D"https://ci.li=
naro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodcon=
fig/10/artifact/artifacts/manifests/build-baseline.sh" rel=3D"noreferrer" t=
arget=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-mas=
ter-aarch64-mainline-allmodconfig/10/artifact/artifacts/manifests/build-bas=
eline.sh</a> --fail<br>
&gt; curl -o artifacts/manifests/build-parameters.sh <a href=3D"https://ci.=
linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodc=
onfig/10/artifact/artifacts/manifests/build-parameters.sh" rel=3D"noreferre=
r" target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm=
-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/manifests/build=
-parameters.sh</a> --fail<br>
&gt; curl -o artifacts/test.sh <a href=3D"https://ci.linaro.org/job/tcwg_ke=
rnel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/arti=
facts/test.sh" rel=3D"noreferrer" target=3D"_blank">https://ci.linaro.org/j=
ob/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/art=
ifact/artifacts/test.sh</a> --fail<br>
&gt; chmod +x artifacts/test.sh<br>
&gt;<br>
&gt; # Reproduce the baseline build (build all pre-requisites)<br>
&gt; ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-ba=
seline.sh<br>
&gt;<br>
&gt; # Save baseline build state (which is then restored in artifacts/test.=
sh)<br>
&gt; mkdir -p ./bisect<br>
&gt; rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifac=
ts/ --exclude /linux/ ./ ./bisect/baseline/<br>
&gt;<br>
&gt; cd linux<br>
&gt;<br>
&gt; # Reproduce first_bad build<br>
&gt; git checkout --detach c3496da580b0fc10fdeba8f6a5e6aef4c78b5598<br>
&gt; ../artifacts/test.sh<br>
&gt;<br>
&gt; # Reproduce last_good build<br>
&gt; git checkout --detach a9e7c3cedc2914f63cd135b75832b9bf850af782<br>
&gt; ../artifacts/test.sh<br>
&gt;<br>
&gt; cd ..<br>
&gt; &lt;/cut&gt;<br>
&gt;<br>
&gt; History of pending regressions and results: <a href=3D"https://git.lin=
aro.org/toolchain/ci/base-artifacts.git/log/?h=3Dlinaro-local/ci/tcwg_kerne=
l/llvm-master-aarch64-mainline-allmodconfig" rel=3D"noreferrer" target=3D"_=
blank">https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=3Dlina=
ro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig</a><br>
&gt;<br>
&gt; Artifacts: <a href=3D"https://ci.linaro.org/job/tcwg_kernel-llvm-bisec=
t-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/" rel=3D"=
noreferrer" target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-llvm-bi=
sect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/</a><b=
r>
&gt; Build log: <a href=3D"https://ci.linaro.org/job/tcwg_kernel-llvm-bisec=
t-llvm-master-aarch64-mainline-allmodconfig/10/consoleText" rel=3D"noreferr=
er" target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llv=
m-master-aarch64-mainline-allmodconfig/10/consoleText</a><br>
&gt;<br>
&gt; Full commit (up to 1000 lines):<br>
&gt; &lt;cut&gt;<br>
&gt; commit c3496da580b0fc10fdeba8f6a5e6aef4c78b5598<br>
&gt; Author: Slark Xiao &lt;<a href=3D"mailto:slark_xiao@163.com" target=3D=
"_blank">slark_xiao@163.com</a>&gt;<br>
&gt; Date:=C2=A0 =C2=A0Tue Aug 31 10:40:25 2021 +0800<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0net: Add depends on OF_NET for LiteX&#39;s LiteETH<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Current settings may produce a build error when<br>
&gt;=C2=A0 =C2=A0 =C2=A0CONFIG_OF_NET is disabled. The CONFIG_OF_NET contro=
ls<br>
&gt;=C2=A0 =C2=A0 =C2=A0a headfile &lt;linux/of.h&gt; and some functions<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 in &lt;linux/of_net.h&gt;.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Slark Xiao &lt;<a href=3D"mailto:sla=
rk_xiao@163.com" target=3D"_blank">slark_xiao@163.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Jakub Kicinski &lt;<a href=3D"mailto=
:kuba@kernel.org" target=3D"_blank">kuba@kernel.org</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/net/ethernet/litex/Kconfig | 1 +<br>
&gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt;<br>
&gt; diff --git a/drivers/net/ethernet/litex/Kconfig b/drivers/net/ethernet=
/litex/Kconfig<br>
&gt; index 265dba414b41..63bf01d28f0c 100644<br>
&gt; --- a/drivers/net/ethernet/litex/Kconfig<br>
&gt; +++ b/drivers/net/ethernet/litex/Kconfig<br>
&gt; @@ -17,6 +17,7 @@ if NET_VENDOR_LITEX<br>
&gt;<br>
&gt;=C2=A0 config LITEX_LITEETH<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tristate &quot;LiteX Ethernet support=
&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0depends on OF_NET<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0help<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0If you wish to compile a kerne=
l for hardware with a LiteX LiteEth<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0device then you should answer =
Y to this.<br>
&gt; &lt;/cut&gt;<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;Clang Built Linux&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups=
.com" target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.=
<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/clang-built-linux/1723771714.8049.1630601502888%40localhost=
" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/cl=
ang-built-linux/1723771714.8049.1630601502888%40localhost</a>.<br>
<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
_______________________________________________<br>
linaro-toolchain mailing list<br>
<a href=3D"mailto:linaro-toolchain@lists.linaro.org" target=3D"_blank">lina=
ro-toolchain@lists.linaro.org</a><br>
<a href=3D"https://lists.linaro.org/mailman/listinfo/linaro-toolchain" rel=
=3D"noreferrer" target=3D"_blank">https://lists.linaro.org/mailman/listinfo=
/linaro-toolchain</a><br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAFYwA27_YcNO3zebCAXNZ%2BEmb2vYNtjeTaoDqm17KMh=
%3D23H3DQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAFYwA27_YcNO3zebCAXNZ%2BEmb2vY=
NtjeTaoDqm17KMh%3D23H3DQ%40mail.gmail.com</a>.<br />

--00000000000072b39d05cbdb3281--
