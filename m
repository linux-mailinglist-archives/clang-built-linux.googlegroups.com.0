Return-Path: <clang-built-linux+bncBDIK727MYIIBBBNM2KBAMGQEXFZMQRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C337341C0E
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 13:16:06 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id a22sf18029936ljq.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 05:16:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616156165; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hu367qCjdL3YpW8vf+YPoSESLPcA27XorbOBIcAp5IYjvoBD5JVTm1ixM9hE1GvtG0
         7MjlIP91EPag9vx0HWVZq4p/5nFh9MSNZWltatLgqtUyYW7aFXxpI51C+6OB9AcpY2nd
         XFBbqQe92VTwIRSa92U6zqTZT6Fsc/m4rDaZR8ZOFE44ZjFkXi1vURNjBhBfefNAzC/E
         P8ZknF25YoT9Mg9qGQ7P00Y/wfTwvZujxKAkv5Xh3LtD2yOAI3FoZVyO7NppkqkfbJjj
         VsHjGttutkDXTVlGpceI5X+uiAtQwZSdZJ6IOGAbp6NNqA5+/1zohez2LXuxQWhx8mdR
         9FDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=dtilOKfe6uEBDyDt9/rkI7LkXo+U0O5qyPBuh9j59B8=;
        b=GTqBS0+YYr80F/StAjYa+7+Gc9t8uzTrDq/ebV28srepgsjKZ89XfPsL37BbiqPTcq
         OstAO81yh226hGdoV5KvcLNFCOG6iTfPiO0EKV/pFs03Eqb/ix+p06CIyQCBmsCyyZDS
         ZQatPktLMj3aSmASCkq9D8vEGfLwwf9rynJb1ftP9t63m7B8nmACxLq2+ePOutdwACem
         Rg5jvigTkKGnFtl6vTGdwNJMcDfAoz+gYGblsiGMMGKluG3Aw9IYRjXhgv9kBERBOF3m
         Wfs2+QNRqNP91N8XJYkgLRDLk6soOt/LdhS+lRbmS2f2vL7kMfYN1yqaXyxq5uZSljvS
         Bimw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of glaubitz@zedat.fu-berlin.de designates 130.133.4.66 as permitted sender) smtp.mailfrom=glaubitz@zedat.fu-berlin.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dtilOKfe6uEBDyDt9/rkI7LkXo+U0O5qyPBuh9j59B8=;
        b=NTeaFIB7j/W/mkoyie6NhFJElh8o651bHpsdLterMBJEufinqjDAYMDUMCFpl0V7oP
         WtjILtegYgowPhLnroCDXx8jkjH4NrtT7qEsWeuyIOgCAdPvTv3sYulqjON8kiakwwpJ
         Y7e1pS6j8+zBPkbk5jKNqti57Um/Zs7dClBoy6A2MS17xZvDA+5sz24PHlbd8vCoGOuO
         PDUdCaV2I78lAt1TsD72CptsNRisp2fZnNYhdp0FoGxZguARmf2k3dJxWaT9EuADQC/M
         rIe8VnbcDt0Nf+4juvMn6OlHCNgjheXdCmtFq/KWOwyyOJOSy/R7W0OAtWLIIV7f0nFC
         iqGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dtilOKfe6uEBDyDt9/rkI7LkXo+U0O5qyPBuh9j59B8=;
        b=HLNf0Akn3izuCpw+B63GtA2ACaltkghmt4ueV8IIg1oDRi6lHr0fyjvNZLm2c0c4is
         sB6aiV8AC1113ZrFlFu5DW6qAXseHlU4pZJFbHj/EJ598Zk8vVKdFHNE94YyurJc9A3E
         HiASuuMC91VkLvwEmJK1YrfNUxCd/GoMB6GbAGiKlsP47DKjSo3Oh2n2AZ7w0A6Hdlww
         nCGUZZdl5OaQCoggEgPgsrOGn+o8ucPswdpsFttRNsm5vB4l9ab7hfKhsBKO7ujSmp+N
         U3TBKRYhhhsxlM3qyqh1Ntle1mm12u7/Dto6bw2li+Rfa8hOkPZ2wQW0mOCPI9Pli+Vb
         +u2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53078Xt3w1SieK0dhiszyAf9BvCczEFHNS5ikVKc8AXWdSBLEOoN
	U8DExjpXBdhkc2SdQ1qBP4w=
X-Google-Smtp-Source: ABdhPJykxOuTZbF0HQgYlRyRpzuOtXxq0TheunfNTb1srYfWRJPfcokhkUAjdcPrcNEli9qvrRt5sw==
X-Received: by 2002:a2e:b555:: with SMTP id a21mr740307ljn.69.1616156165766;
        Fri, 19 Mar 2021 05:16:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b603:: with SMTP id r3ls1176045ljn.5.gmail; Fri, 19 Mar
 2021 05:16:04 -0700 (PDT)
X-Received: by 2002:a2e:9941:: with SMTP id r1mr772284ljj.24.1616156164759;
        Fri, 19 Mar 2021 05:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616156164; cv=none;
        d=google.com; s=arc-20160816;
        b=fc3a4UGtwXeNSdfDnSLIe5hGfLHCgIZxCVEqJJjBYAjyHuRqhQwfmSVFw4+lCBqT+p
         aPNTNZXRMav1cJLQpDxzOZn+JVYVGWBuckn2+6uWF3hhh88aF/hPGRSR45BWoYOej5fO
         sR3CqqG7b1BjeqV/lL46pOOYJ2mAWpvsQ1nNIW49Buu2Rd6DkrS02vi5LEVwMHmoufXm
         J0ZfYbis9I0Uq3a1jSw019Pwa62vT2Nb2lozstdG9GjLf9rgvTthQC2qYn1yk14QTZUP
         MBKIArk9TF45A1AJO2OSPyCLH2bNgaVGozn5JaXMMKGRwwC15ReKjh13wc2wB08XuYby
         WGWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=M+aNqRtyjlCIyLiP+nl3I54XqMU6Wtsop/cuksbVJtI=;
        b=itwsqyr/J0vxvFzH9D6puXWUzl1pIta1IF3MxEDXNu1SVMkjjnIs7/ZG8/+xMlKxDT
         CUMGmswl9MdORR4krMW1ZoucCOOIt6v+ImW3tx8/lL7tvvXsyYZV4IMP5RoIF9oyH8+x
         SSPbHfyiugjrc2FieIJMRh74zcPa/l74rlBEFRFF3D88xvrkQpogeGEcVV/OKn4UpgvN
         042bFUR6Ft1Yz6Fan6vDwvMU9hrk6jNDhYrOgLaqFLRPz5JHSzqYe84e5PhJ2kC31bq0
         1EwatrKE2Yyh5r63DGwwghZe3dM0Srzar1HiOKXj8ZwTNG1qaGxnANhYNGL39oefGJVm
         ohJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of glaubitz@zedat.fu-berlin.de designates 130.133.4.66 as permitted sender) smtp.mailfrom=glaubitz@zedat.fu-berlin.de
Received: from outpost1.zedat.fu-berlin.de (outpost1.zedat.fu-berlin.de. [130.133.4.66])
        by gmr-mx.google.com with ESMTPS id 63si183983lfd.1.2021.03.19.05.16.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 19 Mar 2021 05:16:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of glaubitz@zedat.fu-berlin.de designates 130.133.4.66 as permitted sender) client-ip=130.133.4.66;
Received: from inpost2.zedat.fu-berlin.de ([130.133.4.69])
          by outpost.zedat.fu-berlin.de (Exim 4.94)
          with esmtps (TLS1.2)
          tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
          (envelope-from <glaubitz@zedat.fu-berlin.de>)
          id 1lNE2q-003JAk-Au; Fri, 19 Mar 2021 13:16:00 +0100
Received: from suse-laptop.physik.fu-berlin.de ([160.45.32.140])
          by inpost2.zedat.fu-berlin.de (Exim 4.94)
          with esmtpsa (TLS1.2)
          tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
          (envelope-from <glaubitz@physik.fu-berlin.de>)
          id 1lNE2p-000jNP-U2; Fri, 19 Mar 2021 13:16:00 +0100
Subject: Re: sparc: clang: error: unknown argument: '-mno-fpu'
To: Arnd Bergmann <arnd@arndb.de>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org,
 sparclinux <sparclinux@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Anders Roxell <anders.roxell@linaro.org>,
 =?UTF-8?Q?Daniel_D=c3=adaz?= <daniel.diaz@linaro.org>
References: <CA+G9fYseDSQ2Vgg5Cb=8HHdpm56aeVQH0Vdx7JK1SktGpRRkgw@mail.gmail.com>
 <CAK8P3a3Za8N2-Hs02nG0CcGJ+RcTrR0UqDOesd8E6PmhYRR2_A@mail.gmail.com>
 <ebf12838-4525-a525-93bd-2229927e50ca@physik.fu-berlin.de>
 <CAK8P3a2WCYxG4-4x49Uc-+pXPciY5EsDqmNcEfufcXZp6Q3+MQ@mail.gmail.com>
From: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
Message-ID: <88ab1610-3096-b4a0-e1af-9443cb8b9953@physik.fu-berlin.de>
Date: Fri, 19 Mar 2021 13:15:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2WCYxG4-4x49Uc-+pXPciY5EsDqmNcEfufcXZp6Q3+MQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: 160.45.32.140
X-Original-Sender: glaubitz@physik.fu-berlin.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of glaubitz@zedat.fu-berlin.de designates 130.133.4.66 as
 permitted sender) smtp.mailfrom=glaubitz@zedat.fu-berlin.de
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

On 3/19/21 12:56 PM, Arnd Bergmann wrote:
>> We'll get there. There are some other SPARC-related clang bugs that need
>> to be squashed first. We have made quite some improvements and it's actually
>> maintained by the community. Of course, we don't have a commercial backer
>> but that shouldn't be necessary for open source to work.
> 
> I meant there is no point for Naresh to do it as part of his build
> testing with tuxmake.
> If someone else gets it working, they can tell Naresh to try again, but until
> then, I'd limit clang regression testing to x86, arm, powerpc, s390, mips, riscv
> and arc.

It's definitely a useful report as I haven't done any tests in this regard yet
and we're certainly interested in getting this to work. We previously had Nick
give a session on building the kernel with clang in our monthly m68k meeting [1]
and he said, they are interested in supporting as many architectures as possible
in their efforts.

Adrian

> [1] http://m68k.info/#llvm:linux:video

-- 
 .''`.  John Paul Adrian Glaubitz
: :' :  Debian Developer - glaubitz@debian.org
`. `'   Freie Universitaet Berlin - glaubitz@physik.fu-berlin.de
  `-    GPG: 62FF 8A75 84E0 2956 9546  0006 7426 3B37 F5B5 F913

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/88ab1610-3096-b4a0-e1af-9443cb8b9953%40physik.fu-berlin.de.
