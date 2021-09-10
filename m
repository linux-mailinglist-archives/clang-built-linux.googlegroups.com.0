Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYW452EQMGQETS2IAXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D034071C3
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 21:13:39 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id p3-20020a0565121383b0290384997a48fcsf1243311lfa.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 12:13:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631301218; cv=pass;
        d=google.com; s=arc-20160816;
        b=skhmxH3fi6t1I6LDPpWPx2jVasJlBk4jPQvUl/j3lmaTDvu0rhAPTQ4jsoXhhMuwfy
         4969m5Jc3zhA4ZFqjIhMOrw1bs99T4FrZujVVENCUgzZjoJxKEe3hX7csuDzstoxziZw
         pcMiGOEmvv4EXkZk+hn7EWPXA6gLx3km9+zSQF/a4XguRAG81n6CTjYxeQO5WaSiDEo4
         HiJTxQ4cIBRjuUp7zjPBSn0Dovx1IMSJ/z5B9aEyD67y9uJO/YcvFYuwOtoV/XamLEo8
         DByDQ62ISugqQrsTtDbU0fWl1ta+Er/+YRU/x+GJIHNxX+9ym4RkVUb3BVpWLHNv92dz
         FUsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1Xfl2NEefV/PZQgqWaTLxaW2MIlRSgksFCg/JdmgBKc=;
        b=kfQBGnzr1r7235jiQDxFIx2gSnt1DtWfJ9HG8aw9NMauZdVXPj4eWq3/Ssqohvz1pP
         yejL++ZLSzA/GO6/ktfmKA7nfb7hSppTZVp9rYPjf9VNqvs7IK26ZH8RFgnSrhwr7O2w
         9CvtsBR7Vv0306JclZ0HgxLffpupan8s2yWEUcdBIjPYjqpk2qFJ8iw7ItHUZzXkvVDs
         2kDgIzl44fjhx4rwdHmrr1VjAamjbka2aY0YS3DM8EKFzqSQxfbpzrQpd9L9bxXzoEag
         Hg5S+6ugzQHGh9+9znyoFyFGabzc7mv79PQ2lid4YSKBqtJv2InEBi3TN3LcSdgY3pdn
         J5UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=CZ61t5GM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Xfl2NEefV/PZQgqWaTLxaW2MIlRSgksFCg/JdmgBKc=;
        b=Je6EbRMIhIKyHw3T4rcD6FpC4+Wl6pJ6JlW+e5OXpsOr+OwdpYui5eNtLtnK4ULuN7
         C4RSVFNTBQqape0ikQg/ZUH07ilPfjP89FbB8/oDUF7jlPiAE0JpsLKbXAKUp2niRBg/
         NCJKaglTCBzDFIbQEVx/QgZ57Uyf7d4DaS6CFkdzjLgSesuikiHU3HyxNiP8hCAx83f+
         rQ3MBOyYfquJ/3LXKqGb9n6efB/3/07j7ER+HOpTxw7py+eWgnq2oNND8CUIYocmV1ON
         vYbOel7uyUPOc7Ha5oY12ig2QVbaDW3cdRo9QPT1V4wbUTXsCEQ+lQD1meWH3BYbl1Ef
         laIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Xfl2NEefV/PZQgqWaTLxaW2MIlRSgksFCg/JdmgBKc=;
        b=bxG0NuXKlE1o+s0usTYSYkNuTg72UQRDtuhht8jMsP9JjLQLa7fKSHj8SYubTeYgjd
         rOEjWh3zn0YnPNDcmMij+4BjWWj6WUkhIivDiFQcDZu4P33E7kdjB8p1mCJwNbGCQXdT
         GEz/KQbtlSg4K9q77nXi0iU6n1Nxa0CTQPz+OGkagyqGX3XwYVzjsKH/OFjhWvWq+5nG
         uZZB3Pb58ZZ/v60gJz0v5Z0WVks+yr7aYqKb0KrYdQSzNtl9m4rTAdcn/iZqoPtUh83t
         nO26KThGxSNttA0xB1jHFZ/vts73tSjR6r1XVvu6aE86LTxha8fgYowoRxGJPc545HhZ
         yOHw==
X-Gm-Message-State: AOAM532zPzEI8Sf0RCPwemkOYDqAyKFcSjzgiNrmG8+8Lkt5tXL/J6Vj
	0pkQVbZG0sjnNKiDT0D+DXk=
X-Google-Smtp-Source: ABdhPJysU8XL4sNO86irMpQhSsH/rH2kv2GMViEDByPhAqWftlopDgEag4/ujDOqBzWmlZUCs494uQ==
X-Received: by 2002:ac2:46c4:: with SMTP id p4mr5135070lfo.668.1631301218566;
        Fri, 10 Sep 2021 12:13:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls1447449ljf.7.gmail; Fri, 10 Sep
 2021 12:13:37 -0700 (PDT)
X-Received: by 2002:a2e:8810:: with SMTP id x16mr5502943ljh.410.1631301217565;
        Fri, 10 Sep 2021 12:13:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631301217; cv=none;
        d=google.com; s=arc-20160816;
        b=blR64vCcEN8/FG1kGIFwasj8Rh6gmRgiRk5axJqNpGkU3w8CYKUFuO/ROQ83aBpnby
         qE0XrpsPE77sW7W4G8tc/j4dQqPWUh2RghFtu6g6wm4N5quHQzTCOH6UhlgoLinT4tC+
         I7LoiEUNpgZvs19DXPSmrE1hurUyRRA9g+LPIWqfZ7cN9wX93JWKNEJY6xcqcub01Bfc
         y6ZtYohzHdSKFQQ1sw7N1H5Nl2la8aSzg9TT/idW7Kyf361Wo/RbDOPaWJ30BsYLuG+K
         j5REtBLn/uVXaxBbeTCuo8J0SYg5X124nOzeD4XPjYzpqujQ5xS4wF6iVo8GkVO0YRXJ
         iqfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TcDMnxGRTLykeutj8nRuBAPXDOoHE9kaLJ/+ttKjtNM=;
        b=dV8NzzQs9LH2QNoT+3meuUreWsLCHS9HHqGhEDMaiimcctiMAT3F6fpS+VuvK0dDKu
         /QjGeglSGzsA1GoXOoXH7evyuJ9j4VomSETKxouo15Yzz03vKk1u4sj3ONULxCX5Wg1L
         tDPjVl5FHIyght/1LsqPvqGZ9HSwyZoe9Sv18QCk6gbg5QNLjLYFqo2tu+Hdnn2/BiF9
         Cu0Bk/k9KzP4/h/DfrdsTISU+yx9SYxwV6ko9C0XAyt0MSaxhKspSLkO2LYgsNEo4odN
         cbcOhIWYKY37URLOKLy9ssr2xy4iJzYcJFViabkRi454oiLGDDbfhpiJzckxZt8JlG/y
         kwYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=CZ61t5GM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id t7si447301ljc.4.2021.09.10.12.13.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 12:13:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id s3so4791805ljp.11
        for <clang-built-linux@googlegroups.com>; Fri, 10 Sep 2021 12:13:37 -0700 (PDT)
X-Received: by 2002:a05:651c:1305:: with SMTP id u5mr5263539lja.198.1631301217056;
 Fri, 10 Sep 2021 12:13:37 -0700 (PDT)
MIME-Version: 1.0
References: <1723771714.8049.1630601502888@localhost>
In-Reply-To: <1723771714.8049.1630601502888@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 10 Sep 2021 12:13:25 -0700
Message-ID: <CAKwvOdmSW1Ntom389FD3qOC=iTCwJH=g5MiuRdeftxMdwbRBbg@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
 - Build # 10 - Successful!
To: ci_notify@linaro.org, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: tcwg-validation@linaro.org, linaro-toolchain@lists.linaro.org, 
	clang-built-linux@googlegroups.com, arnd@linaro.org, llvm@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=CZ61t5GM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hi Maxim,
We're looking to turn down our old @googlegroups.com mailing list. Any
chance these reports can instead be sent to llvm@lists.linux.dev so
that they are archived by lore.kernel.org?

On Thu, Sep 9, 2021 at 10:20 PM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
>
> Culprit:
> <cut>
> commit c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
> Author: Slark Xiao <slark_xiao@163.com>
> Date:   Tue Aug 31 10:40:25 2021 +0800
>
>     net: Add depends on OF_NET for LiteX's LiteETH
>
>     Current settings may produce a build error when
>     CONFIG_OF_NET is disabled. The CONFIG_OF_NET controls
>     a headfile <linux/of.h> and some functions
>      in <linux/of_net.h>.
>
>     Signed-off-by: Slark Xiao <slark_xiao@163.com>
>     Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> </cut>
>
> Results regressed to (for first_bad == c3496da580b0fc10fdeba8f6a5e6aef4c78b5598)
> # reset_artifacts:
> -10
> # build_abe binutils:
> -9
> # build_llvm:
> -5
> # build_abe qemu:
> -2
> # linux_n_obj:
> 29873
> # linux build successful:
> all
> # First few build errors in logs:
>
> from (for last_good == a9e7c3cedc2914f63cd135b75832b9bf850af782)
> # reset_artifacts:
> -10
> # build_abe binutils:
> -9
> # build_llvm:
> -5
> # build_abe qemu:
> -2
> # linux_n_obj:
> 29873
> # linux build successful:
> all
> # linux boot successful:
> boot
>
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/build-a9e7c3cedc2914f63cd135b75832b9bf850af782/
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/build-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/
>
> Configuration details:
>
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
> cd investigate-linux-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/manifests/build-baseline.sh --fail
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/manifests/build-parameters.sh --fail
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/test.sh --fail
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> # Save baseline build state (which is then restored in artifacts/test.sh)
> mkdir -p ./bisect
> rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifacts/ --exclude /linux/ ./ ./bisect/baseline/
>
> cd linux
>
> # Reproduce first_bad build
> git checkout --detach c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach a9e7c3cedc2914f63cd135b75832b9bf850af782
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/consoleText
>
> Full commit (up to 1000 lines):
> <cut>
> commit c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
> Author: Slark Xiao <slark_xiao@163.com>
> Date:   Tue Aug 31 10:40:25 2021 +0800
>
>     net: Add depends on OF_NET for LiteX's LiteETH
>
>     Current settings may produce a build error when
>     CONFIG_OF_NET is disabled. The CONFIG_OF_NET controls
>     a headfile <linux/of.h> and some functions
>      in <linux/of_net.h>.
>
>     Signed-off-by: Slark Xiao <slark_xiao@163.com>
>     Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  drivers/net/ethernet/litex/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/net/ethernet/litex/Kconfig b/drivers/net/ethernet/litex/Kconfig
> index 265dba414b41..63bf01d28f0c 100644
> --- a/drivers/net/ethernet/litex/Kconfig
> +++ b/drivers/net/ethernet/litex/Kconfig
> @@ -17,6 +17,7 @@ if NET_VENDOR_LITEX
>
>  config LITEX_LITEETH
>         tristate "LiteX Ethernet support"
> +       depends on OF_NET
>         help
>           If you wish to compile a kernel for hardware with a LiteX LiteEth
>           device then you should answer Y to this.
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1723771714.8049.1630601502888%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmSW1Ntom389FD3qOC%3DiTCwJH%3Dg5MiuRdeftxMdwbRBbg%40mail.gmail.com.
