Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3EYUXZQKGQESTRWS7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A62182361
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 21:39:09 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id m29sf2014553pgd.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 13:39:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583959148; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZkIAfY2ViKgLZtNc/v6yWzaL4J4kkzUUVdIAijwa4laziW0KLybiEvVQfsdfuZYdJ+
         3XR6ResHMX9bcpQwl3OhVb01/c4MUITIhEaB+jYfishVGIn4v6g5exxni0mMrzc6NnwH
         zs0WyTYJrr8WvabS+VcQHaahIXCvtLcDktYNYsCbWhiFUunMWmF5OJE/XCwFyKn0p6fV
         lo2UtcEfa04WDGINg91+e2vzBihfYbYKXiQ7Lk/IiR4Hd+juUHT4Eqq2T8viCFVUdeWX
         LCfMDzAuyKNGSUid+sk38/8XxIGcEP12L58zPybaCAzpts3S5qqVxtkOJPruq0KFAI33
         bi/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CX8tfbEsXSnONzbNc1abmEwsXYloyP8vUC4g+WIAcg0=;
        b=fjoWyb6tzPFeesleub41XUsdhjfZt5uoKG0HQyDYTJDUeo209tG7ybIv9+kimeMt55
         MrkTHVExQZlnwzVXoFqbyNmPMECx+sfoxxbx2C2/onMFuqk8Jpy0zwuPREH7cVrFjNJs
         vqudMDzarzaSToqzje3+LhLbvS+nMSR2LEJ2DWSbSgTEd2OA+EAYX604IOgvLIVCBXpT
         IXvCUzGbIdeE9rZO97kYvmYLSAaYhxlBd8nXrH2C/TLZElMsUjEqQt/w8E8EStSBo24L
         v+nKWt1kHwH5ddnQUY4Xngqk+H1JNYRAm8PNU8vEs+Ic/xPqKy0NXp085uvaNHXlQbCn
         Tsxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O4bzP4Dj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CX8tfbEsXSnONzbNc1abmEwsXYloyP8vUC4g+WIAcg0=;
        b=Jn8gasAK76baoS7m/0zBdexkC/Q+cwYW7u0Pr1sgAb25FM60azQ0cIvyL/rx21py8N
         PphkT6JNz4ADQNc/M9dSIX+88T+auPR3Yzm0p8i4WmLbkuhH/ko9clU4GsG+GnfhEnus
         5DyWcpLluAbKqO+5vvXrFVWTL7Fq1aDiY+/RMJpzwDxAUp+sOUmNaaIROKc2JtUauZ9k
         nD2wgld/sXYGiKVIuZ4dGV2m4EN/gDa/pBRJMelHKp7kW6hqWhyTK5whIY/b+atbfBMZ
         eERvsH91b7ANm7Kd5xgZCDElh4lgznWDlCPFUFo6nSTltv9ACUKFI8FwtOpn6U7Hbbgk
         xbKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CX8tfbEsXSnONzbNc1abmEwsXYloyP8vUC4g+WIAcg0=;
        b=Zb6Bvk4kXzks8uIhnj2szxH9hwGJO8js5b6FnWGgewIOP7sha1ZCbYfJANGy6RV5zR
         8ovh+LScs3muUuglIJtreAhq/jSszxK1pRPKtmVldF0O8UwpuSVwgQAkLVYccr8D/uBX
         GCNPTw8FyGiUaO8Z0mbzCjKbDh9uDb+vkzx87deXkFyvAH1F2Ov6Q32/wKAzC7Yw5gEd
         FgSbhfXbZuza1tmrDJF/FmXNNt0RTs0hgI4fwpCImqbjpKORsXtoVIKzntOVwcDCb6Y5
         jQXXAs7M3JRbN4++GOiA3fmYZFMUO5DT+8V32h/mn+/qHsAphmcejxAD8ODyZdOuQ+R4
         ZaLg==
X-Gm-Message-State: ANhLgQ0L4BDUfb02+E4DPpRU02cvgowzTV2/dj94PQ+bP6qYj39bGlkK
	bkxzR1Hv0Djm+pCdoOhAuqY=
X-Google-Smtp-Source: ADFU+vupWQMS5cMEPTnyIg+fDX18wFgDwHincuKK2gvOZ/nCEV5Elk3bRHaQF/S80DZMeidkNi67nA==
X-Received: by 2002:a17:90a:f50b:: with SMTP id cs11mr519000pjb.145.1583959148451;
        Wed, 11 Mar 2020 13:39:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls1389382pff.0.gmail; Wed, 11 Mar
 2020 13:39:08 -0700 (PDT)
X-Received: by 2002:a62:b604:: with SMTP id j4mr4620777pff.93.1583959148010;
        Wed, 11 Mar 2020 13:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583959148; cv=none;
        d=google.com; s=arc-20160816;
        b=VebaedtqAYd56XYedntwljlD56EJrtUxgWbPmIl0/dgSfS2mJu4w2/ZELgh82DVvR+
         znm34bCQxV0s0G+5Fuz2yVE7sgNPu9btNIt04UMJl/+lZCoVG8qSqmx9MAWDjlVX/yNO
         VHWZq5BPbLKubeleobYbzKWyU225rSppwfE0WdKyKJXSQNE318IXo0PtBK46piK4Ynjp
         vDULIgeLOkTbuK+Tb7aMWJcTmmuN5Jf+VwP9+uT+oXXl13sQTsyh7s3QADznZYFtcta1
         N/cqKkTGIItiAzvERjELC94WyqiCUvtXoGKUT3ORzzmeq3JqogYyiy97w1qHALg/bwkl
         gG3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MKo4FCyqh6vtW+5c6mxtnuhZAubvHTQpMKiiAxh7tuI=;
        b=yr+jaHyVsnPZZV9uaceVQhYUY+zMt//cXyPprNyzeQA7aQSMY8q7Aso5FLoAMd5P86
         QBdZOZALRW9MXRjLl3N69DFO17XPm0cm8LTdHxUFa6dAejvYd0ZMEAKCK/DtiurbRnRM
         roaotNs6CWW5s31Elxugzp3PB5djbXjfqjMwzc0fg95IumNU2+Fuk12QYyLDpVW/0sqC
         atv8MeX5JWpe7IgRQ4rhP8wr6mo6dO9j2AT3IwuDhkq3U/JQV+aRGpBTQ+voCNE6aGCm
         einFiAetprgRi187sqgzhXsiWtopsZb2ZMEZwiQDQgwC1E6CL+b8h6nIHeigZl82S6s6
         j5NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O4bzP4Dj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id ng10si213842pjb.2.2020.03.11.13.39.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 13:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id y30so1802076pga.13
        for <clang-built-linux@googlegroups.com>; Wed, 11 Mar 2020 13:39:07 -0700 (PDT)
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr4541507pfo.169.1583959147355;
 Wed, 11 Mar 2020 13:39:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200310075328.GA17573@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200310075328.GA17573@ubuntu-m2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Mar 2020 13:38:55 -0700
Message-ID: <CAKwvOd=kZgBhZQ-ahCZsNrHEL7VPqnK4w5i7G2_j829SuPXt4g@mail.gmail.com>
Subject: Re: Error in dtc around -fno-common
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	devicetree@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O4bzP4Dj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

Bumping this thread.  It would be good to send this as a fixup for the
next -rc if possible, that way we can start backporting it to -stable.

On Tue, Mar 10, 2020 at 12:53 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi all,
>
> GCC 10 is defaulting to -fno-common and Clang has decided to join it [1],
> which will completely turn our CI [2] red across the board when our
> compiler uprevs in the current tree's state:
>
> ld.lld: error: duplicate symbol: yylloc
> >>> defined at dtc-lexer.lex.c
> >>>            scripts/dtc/dtc-lexer.lex.o:(yylloc)
> >>> defined at dtc-parser.tab.c
> >>>            scripts/dtc/dtc-parser.tab.o:(.bss+0x10)
> clang-11: error: linker command failed with exit code 1 (use -v to see
> invocation)
>
> Is it possible to pick a single patch from dtc and get it fast tracked
> to mainline/stable so that this does not happen? It would be this one:
>
> https://git.kernel.org/pub/scm/utils/dtc/dtc.git/commit/?id=0e9225eb0dfec51def612b928d2f1836b092bc7e
>
> I have tested it and it works fine. If that is not possible, how would
> you recommend solving this issue?
>
> [1]: https://github.com/llvm/llvm-project/commit/3d9a0445cce368b55dc3a573bc91fe902bbb977f
> [2]: https://travis-ci.com/ClangBuiltLinux/continuous-integration/builds/152428887
>
> Cheers,
> Nathan
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310075328.GA17573%40ubuntu-m2-xlarge-x86.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DkZgBhZQ-ahCZsNrHEL7VPqnK4w5i7G2_j829SuPXt4g%40mail.gmail.com.
