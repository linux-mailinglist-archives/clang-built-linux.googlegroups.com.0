Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLHL7WEQMGQEIOKVMRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F62540982C
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 18:00:50 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id o7-20020a170906288700b005bb05cb6e25sf3870986ejd.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 09:00:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631548850; cv=pass;
        d=google.com; s=arc-20160816;
        b=iyxHPBiBYSRIwfCD3Q2ldMpbwpc8cs4j8xIl6w+qJwGe9Dv5unitsQ1nHH8wYeuwcQ
         kPQcGFNSixREOWMqYK6M29buvpuX8Ra7Ab2z4tv5Y0ZwswKUfea2H2JQLDM+8I2hRDSL
         DsR/JiUXQp1qJmnMci/X7THNEKoskzAndb0iAd5h3QNt6O8OCoW6DtsZgBHmh/7Verwx
         gsk7Nzldbk1gJE86tu/9JYsZZdzZTvsCGaPU5k9Bu8P+8rG0GhABnjwh3Jo3CregYvjd
         LZ0bTYQhYL4TRsPU55udAKme6d8HkDmgRucLccoIGRSjErhni925OOO92AVFSK/JAFwQ
         HvHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ozw6RkUxrvbLo74nRo5ScueBdXE/SH8Bo5jP2eyO7ps=;
        b=RX1BIPFLdIHY85ruTuI+N6WhogrC7omc1yuAVnYmWoT2Za0xHZL5WzF2xv2T38WXaz
         EpWFukuLx8j8XIMmUp+FiFMbT6bbgcz/2vwSQBNwAr8+ueDeKE5hglgIjRs1A4FcpPxY
         ytpNCzTFZRsLMT96f8MjVzs1Isub1w9dYfYsHxf0g9rcfT7H0j6MKpWzz0eAkAirkWo4
         cP/iL5Y3FGOACdBLYBLBvVH+S9aSaYUe0LCCbOV+wEIDKE4wbmMR+h/AKX2VTgt6H1Gw
         CmIsXY8rzeoCjd++emtWyX1+RZSIpm9l13Ct87DiSpvwVUw6fqnpatimUAMKT9xy4voP
         8O+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=e0r2tpsD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ozw6RkUxrvbLo74nRo5ScueBdXE/SH8Bo5jP2eyO7ps=;
        b=HXOmdaqh5RDtV1z4eRxxutZMqeJfN2WTtQWyPonlO1zx23rzJQg5lsy8BMabngNP69
         yQ1rgaaJ/VuFWq5EmhGix/2gF+YpDlFoFIXg6I8+gyiV7iIP/rSl++IpMHrDr3uO66jE
         85Ama08pTvqyzpD/yj3uPN9qHurv0A66Ozoh4COz+F/rhdvDInKpt11iAKhHV1+ZlwQP
         wtY76bFpl2mNYbVEC9KBDDL+DvssJawKtckOUthzq/jW7AHML06wqLLPb3E8qXfW2008
         uWVWumZhjotMe8xhw75TyhEeVdbiaUIw9yDJpR9YfNlG/KYSB6Li0yunL+yxUJp/CX2r
         mDkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ozw6RkUxrvbLo74nRo5ScueBdXE/SH8Bo5jP2eyO7ps=;
        b=HjBGWJ6pq/b+EzvfrUaXzfLrPxaPhQbGL6wafZv4rvaWTojDeXHnjNbi+vuTuU5EzG
         bUTtL6gQzh4P76ej45dFX/vX8Xk6eHhyobS4yQBapFTLKhii53pSD9XA79dw6LFOrvIa
         gTVJHgudWZfYoWKNWTUsrRrE3amUqXULf61FiHR8IRRVG0P4Lt57VEq2gxNBBf92RxiK
         Sy/jBsB3uIMWqYth6YkVA6qjweYmSlklsSZNtC+xECOXh+kXd9gkh7CvbTP4ND4ZXdiD
         U8tcJwZLFc9hmBDbqisc8/efvH25Y/yXKhjwEMqfbz9P4riK3CMlaMfGzYSW/OkHVu87
         ZxuA==
X-Gm-Message-State: AOAM5321WDEcy2zJcne8BYIQiEr8jscJ2XoTvE1jSXWeBvDaf2keM8UQ
	Z2+hFlTP8cZo2GyJHVXAxiA=
X-Google-Smtp-Source: ABdhPJy95jWvYYdvDxDRX9Izbc7VsTtE2QaPgP+PdxXLaXctU4mhFDuKTw+HUmG39mrQH38xxSY8JQ==
X-Received: by 2002:a17:906:1146:: with SMTP id i6mr13879564eja.12.1631548844951;
        Mon, 13 Sep 2021 09:00:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c944:: with SMTP id h4ls3056781edt.1.gmail; Mon, 13 Sep
 2021 09:00:44 -0700 (PDT)
X-Received: by 2002:aa7:c04e:: with SMTP id k14mr13817717edo.101.1631548844043;
        Mon, 13 Sep 2021 09:00:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631548844; cv=none;
        d=google.com; s=arc-20160816;
        b=vDV/5scJVqx1EV9/IwPenLUz9FgsIggYxOSMe9cKB5ZI5WSPlmOpN4qpSgt2MEVFVy
         rjHd4o5tRmSt0Ay7FQJeKvkQW4NrAB8tHUgLxDI5hGmTmlAnaT7AbFVYLp46zu97BK1Z
         nsaqxwIGU9K+BwRLIQEoJRfvuXQir5y7DxIKf3mxdu/Hjk4C3Zcj9874R/uV8J1OmqmI
         eYepr4Ie3OfFP7A/sT3zh8S2G6Lp1FHIffYhfS0xMMqt8TC6BKHyvZxHNzGNws+DIrRG
         aYJo7+LLp5FBei2w2PXosYBfOg5dItCowrJ8dQjfr1aA1Ucr18q+CmWd2yr7jIoHkT86
         nDXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tnso6ZagMQK9pK7YlwLa0K1RsHVORZGH60a5gBpaGlI=;
        b=rrJVrSUd08J88AOGgcIOWmRs46+OfmrZNE+j+lVo++ezlK9BmnxRi+leL8IFn4XQCs
         pzS2KmFDjsB8U0fI6kWdJ9FpiWpddEDcCoJlnkTuDHZaw0KECl7/MNulFK8jtRErZaVi
         R+PzNoMNTznJjVdB7o815TCYM/zDHBNxBTcCf4l11zK4FP23DeztwDDcBnoy6zixWghf
         XJDKgvvwoXuNNydOLCcMfHPjeWsdV6lISfpwyzf/aDwpiRmSj6Wnuc1lvzXoW6zNGmQ+
         eBSChoBi70GaLQB1qC9MMByhlTHUYeNrvtJdD4EM+9kn6DPDJXfAZ6Slh/AzhHM6ZVj1
         8Y0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=e0r2tpsD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id s18si684355ejo.1.2021.09.13.09.00.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 09:00:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id s12so18271431ljg.0
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 09:00:44 -0700 (PDT)
X-Received: by 2002:a05:651c:1305:: with SMTP id u5mr10831205lja.198.1631548843315;
 Mon, 13 Sep 2021 09:00:43 -0700 (PDT)
MIME-Version: 1.0
References: <1723771714.8049.1630601502888@localhost> <CAKwvOdmSW1Ntom389FD3qOC=iTCwJH=g5MiuRdeftxMdwbRBbg@mail.gmail.com>
 <CAFYwA27_YcNO3zebCAXNZ+Emb2vYNtjeTaoDqm17KMh=23H3DQ@mail.gmail.com>
In-Reply-To: <CAFYwA27_YcNO3zebCAXNZ+Emb2vYNtjeTaoDqm17KMh=23H3DQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 09:00:31 -0700
Message-ID: <CAKwvOdndJA-6jEAka9Zzsto==D49=Kk=YyPMf6ZYpFPwHCuriQ@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
 - Build # 10 - Successful!
To: Diana Picus <diana.picus@linaro.org>
Cc: ci_notify@linaro.org, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>, 
	tcwg-validation@linaro.org, clang-built-linux@googlegroups.com, 
	llvm@lists.linux.dev, arnd@linaro.org, 
	Linaro Toolchain Mailman List <linaro-toolchain@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=e0r2tpsD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f
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

On Mon, Sep 13, 2021 at 12:13 AM Diana Picus <diana.picus@linaro.org> wrote=
:
>
> Hi Nick,
>
> We have changed our infrastructure to email llvm@lists.linux.dev on the 6=
th of September [1]. The email you reported seems to have been sent before =
that (on the 2nd of September). Newer emails ought to go to the right place=
, please let us know if you find emails to @googlegroups from jobs started =
after the 6th of September.

Ah, thanks!

>
> Cheers,
> Diana
>
> [1] https://git.linaro.org/toolchain/jenkins-scripts.git/commit/?id=3D18e=
73813f104f4d93b8f2b91c9c676b23cb6adea
>
> On Fri, 10 Sept 2021 at 21:13, Nick Desaulniers <ndesaulniers@google.com>=
 wrote:
>>
>> Hi Maxim,
>> We're looking to turn down our old @googlegroups.com mailing list. Any
>> chance these reports can instead be sent to llvm@lists.linux.dev so
>> that they are archived by lore.kernel.org?
>>
>> On Thu, Sep 9, 2021 at 10:20 PM <ci_notify@linaro.org> wrote:
>> >
>> > Successfully identified regression in *linux* in CI configuration tcwg=
_kernel/llvm-master-aarch64-mainline-allmodconfig.  So far, this commit has=
 regressed CI configurations:
>> >  - tcwg_kernel/llvm-master-aarch64-mainline-allmodconfig
>> >
>> > Culprit:
>> > <cut>
>> > commit c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
>> > Author: Slark Xiao <slark_xiao@163.com>
>> > Date:   Tue Aug 31 10:40:25 2021 +0800
>> >
>> >     net: Add depends on OF_NET for LiteX's LiteETH
>> >
>> >     Current settings may produce a build error when
>> >     CONFIG_OF_NET is disabled. The CONFIG_OF_NET controls
>> >     a headfile <linux/of.h> and some functions
>> >      in <linux/of_net.h>.
>> >
>> >     Signed-off-by: Slark Xiao <slark_xiao@163.com>
>> >     Signed-off-by: Jakub Kicinski <kuba@kernel.org>
>> > </cut>
>> >
>> > Results regressed to (for first_bad =3D=3D c3496da580b0fc10fdeba8f6a5e=
6aef4c78b5598)
>> > # reset_artifacts:
>> > -10
>> > # build_abe binutils:
>> > -9
>> > # build_llvm:
>> > -5
>> > # build_abe qemu:
>> > -2
>> > # linux_n_obj:
>> > 29873
>> > # linux build successful:
>> > all
>> > # First few build errors in logs:
>> >
>> > from (for last_good =3D=3D a9e7c3cedc2914f63cd135b75832b9bf850af782)
>> > # reset_artifacts:
>> > -10
>> > # build_abe binutils:
>> > -9
>> > # build_llvm:
>> > -5
>> > # build_abe qemu:
>> > -2
>> > # linux_n_obj:
>> > 29873
>> > # linux build successful:
>> > all
>> > # linux boot successful:
>> > boot
>> >
>> > Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-ll=
vm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/b=
uild-a9e7c3cedc2914f63cd135b75832b9bf850af782/
>> > Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-ll=
vm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/b=
uild-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598/
>> > Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect=
-llvm-master-aarch64-mainline-allmodconfig/10/
>> >
>> > Configuration details:
>> >
>> >
>> > Reproduce builds:
>> > <cut>
>> > mkdir investigate-linux-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
>> > cd investigate-linux-c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
>> >
>> > git clone https://git.linaro.org/toolchain/jenkins-scripts
>> >
>> > mkdir -p artifacts/manifests
>> > curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/jo=
b/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/arti=
fact/artifacts/manifests/build-baseline.sh --fail
>> > curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/=
job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allmodconfig/10/ar=
tifact/artifacts/manifests/build-parameters.sh --fail
>> > curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-b=
isect-llvm-master-aarch64-mainline-allmodconfig/10/artifact/artifacts/test.=
sh --fail
>> > chmod +x artifacts/test.sh
>> >
>> > # Reproduce the baseline build (build all pre-requisites)
>> > ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-ba=
seline.sh
>> >
>> > # Save baseline build state (which is then restored in artifacts/test.=
sh)
>> > mkdir -p ./bisect
>> > rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifac=
ts/ --exclude /linux/ ./ ./bisect/baseline/
>> >
>> > cd linux
>> >
>> > # Reproduce first_bad build
>> > git checkout --detach c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
>> > ../artifacts/test.sh
>> >
>> > # Reproduce last_good build
>> > git checkout --detach a9e7c3cedc2914f63cd135b75832b9bf850af782
>> > ../artifacts/test.sh
>> >
>> > cd ..
>> > </cut>
>> >
>> > History of pending regressions and results: https://git.linaro.org/too=
lchain/ci/base-artifacts.git/log/?h=3Dlinaro-local/ci/tcwg_kernel/llvm-mast=
er-aarch64-mainline-allmodconfig
>> >
>> > Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-mast=
er-aarch64-mainline-allmodconfig/10/artifact/artifacts/
>> > Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-mast=
er-aarch64-mainline-allmodconfig/10/consoleText
>> >
>> > Full commit (up to 1000 lines):
>> > <cut>
>> > commit c3496da580b0fc10fdeba8f6a5e6aef4c78b5598
>> > Author: Slark Xiao <slark_xiao@163.com>
>> > Date:   Tue Aug 31 10:40:25 2021 +0800
>> >
>> >     net: Add depends on OF_NET for LiteX's LiteETH
>> >
>> >     Current settings may produce a build error when
>> >     CONFIG_OF_NET is disabled. The CONFIG_OF_NET controls
>> >     a headfile <linux/of.h> and some functions
>> >      in <linux/of_net.h>.
>> >
>> >     Signed-off-by: Slark Xiao <slark_xiao@163.com>
>> >     Signed-off-by: Jakub Kicinski <kuba@kernel.org>
>> > ---
>> >  drivers/net/ethernet/litex/Kconfig | 1 +
>> >  1 file changed, 1 insertion(+)
>> >
>> > diff --git a/drivers/net/ethernet/litex/Kconfig b/drivers/net/ethernet=
/litex/Kconfig
>> > index 265dba414b41..63bf01d28f0c 100644
>> > --- a/drivers/net/ethernet/litex/Kconfig
>> > +++ b/drivers/net/ethernet/litex/Kconfig
>> > @@ -17,6 +17,7 @@ if NET_VENDOR_LITEX
>> >
>> >  config LITEX_LITEETH
>> >         tristate "LiteX Ethernet support"
>> > +       depends on OF_NET
>> >         help
>> >           If you wish to compile a kernel for hardware with a LiteX Li=
teEth
>> >           device then you should answer Y to this.
>> > </cut>
>> >
>> > --
>> > You received this message because you are subscribed to the Google Gro=
ups "Clang Built Linux" group.
>> > To unsubscribe from this group and stop receiving emails from it, send=
 an email to clang-built-linux+unsubscribe@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/m=
sgid/clang-built-linux/1723771714.8049.1630601502888%40localhost.
>>
>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers
>> _______________________________________________
>> linaro-toolchain mailing list
>> linaro-toolchain@lists.linaro.org
>> https://lists.linaro.org/mailman/listinfo/linaro-toolchain



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdndJA-6jEAka9Zzsto%3D%3DD49%3DKk%3DYyPMf6ZYpFPwHCur=
iQ%40mail.gmail.com.
