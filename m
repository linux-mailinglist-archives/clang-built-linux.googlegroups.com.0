Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB4GZ77VQKGQEDBSETCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 151C4B4196
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 22:13:37 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id q3sf284481lfc.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 13:13:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568664816; cv=pass;
        d=google.com; s=arc-20160816;
        b=DxlkSFAgIlGFLlNt7Q31/djQIc7KMHGf5Chw0itfA8/m4fc6kC51eoDPaSehkhpvng
         rYAwuPdd65VPZK5Tf6LyViweJtvcflpLBJ+6yxesClW/aoR4m6cnlCFxy708LX2VjER/
         K5D6KNS0AzVJMD/Lr/SppE2T1nIZRnH38jIqVSLvWwDtDyH0Fbdme4WFCj2TM//jdSU7
         NQxXFBco2qTkxe/a81Q+hQD1fh2UohRm3zlfM1c70eLHV71riJbW+V3zBF2xm78M6OdO
         329e7jtmc8mKYUuz9JYZm34NeX5NDcRvJ+FYNrgmyYM23ipNBsXMyYsZXoR+KtVC3Fgl
         bnaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=u7cQnXk70hiHNzH5RaCP1cY1qmHgpOSuJoaDVAxubfY=;
        b=ZVMdCtGutNl/PMv2wTvoM3MnS1I/SB1SkfTiA0mAyfI/jC/Rgn/x+wjQqRjHmuxKAm
         C/ttTSZKrPXMc62/4xSV8aUvavw+sBlWTaagOmOcMB0/4fOy5CjNTMR3VC7TWlLLZMjo
         6Hg1UNvqHhj1kR1Awypy/qKizCtT/05NLsQz9xQ4A4LGHRP7Qb2MqyXg4j1Rq5AtPPgy
         qeSwb9hCC3tpTTGctlJpjy6k3kk6E8HQLelXpUdkjFZcmt+M7Zh3aFxtG18xtlwdJRfV
         8uY74Ox5g7sYBVwo/+MUYv4A8H9NJG4Nc54kDC90H1rrDUqwamjIS6Qy5AsgAfRUsjIH
         tNEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LRwz7uV8;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7cQnXk70hiHNzH5RaCP1cY1qmHgpOSuJoaDVAxubfY=;
        b=N+FiakCu67zPslkfSR6wP9cbYeVlP383RR926ZpWIZT/39hfRWIg3AsQYhLfqp6Mtg
         7jkd2OON5J95gLO0EHzO4Jh1E0XSRpnIEcIQ6Nk1DO9ypj8Q9GwG3k3jn/RVoRJLARZm
         a+jQyPeN6IQIoCMs36k7JLa4QFfrrOK8buS+svRiWvIPnPv+AXRabFOsexGGdCW9EPs/
         HQ9Bb9B4BogjTee8zE5TpZsx7b13FfZ8cZNl+8XtFryxjNJhmPvLxcGXDf1parPNz8R8
         JVzgM5ucGi3Dih8WypMA0ybyXugNJJWJxk7bE/hTWdQBRoLkjDGN6WLSDx1+lU7WoBga
         YKzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7cQnXk70hiHNzH5RaCP1cY1qmHgpOSuJoaDVAxubfY=;
        b=ryLwyOlHsIt3twxzjytGZQS/l5O9mogpjEkLjtI9rcxMLwnnodauI2/AdjCqPLoz4T
         wePpdFz1jRJZZbbFOlQJX+8eNsSKn1RExD8EsXhXDSgI2iKa96AP2UOQP8RxMhVIBg3P
         1funZg0jqCnzY2/JAQakZ97+t9wVpypMR+DiwMyrobTlbb9Uwyhm2nMR3uQU/uxuAGkG
         x4HLnfUDkDhAzeVWAYYsmlLCcm583LVyMzQr1BSn2Lhww1soJHTGUEx0Wd5AxpJ1HFaZ
         AhRwLnJRzNZKZcJAEXbI+uCTGLoALYiIWZ4imNgeuP00Dx6gepu/HDK2KyP5oGjfTgcr
         fEzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7cQnXk70hiHNzH5RaCP1cY1qmHgpOSuJoaDVAxubfY=;
        b=cYajgQx3OZrGEg5CAkdIKmruDAGil0P3YOU9VwrMgUaHxi542/6G2kETVXWc/FWfFX
         WmLh1L/FES1dhn04ecE1ApilNWLSywUcBIdvpSv/gFyPiDJyxsJpt2ip7F1AgkdxVPC3
         QrLrxpmcrhgFDfsumK0+nqbBDa4xeXBcTqUjme7iD7dSLyX9DqQ9HqdkSFDo7zSXmOcO
         K8SSfhlQYHvGnz5PdMF7/3S6e699upK31RliZtWIVF10L204fxsFUlobLE7/rIis1ezL
         8URQ77MPS3HQy5D9uDJTFJmwnjhfZd0l53QPkPiSTIjXKqKLXPt4OMuKDXyU2Rh2+ZrH
         96Ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV1MhSZRXR/u+Z/PbMa6wfP/WEc6JnYSl8meTk8YV008dEpMNU8
	09VeO3vnqia91YhgCBfGpaQ=
X-Google-Smtp-Source: APXvYqydu1i3rreDbBDIyUAH1q0Xsv9+GqlqqdkglA6oZf66PoIG1OuW9oPx9fUF6J0gzTEFJm9O7w==
X-Received: by 2002:a2e:2e13:: with SMTP id u19mr775104lju.112.1568664816561;
        Mon, 16 Sep 2019 13:13:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:651a:: with SMTP id z26ls101955ljb.2.gmail; Mon, 16 Sep
 2019 13:13:35 -0700 (PDT)
X-Received: by 2002:a2e:96cc:: with SMTP id d12mr775356ljj.30.1568664815946;
        Mon, 16 Sep 2019 13:13:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568664815; cv=none;
        d=google.com; s=arc-20160816;
        b=F689UqNenRvapNsE6Em0tCpp2MiMVEOIetmSApLdtUVwx3NWnEy7PQDdi8n+7SdPYN
         OAcdcLrLvOjcu6ucXXbmugWTJ5P6fRwrbWDJT4mhlPWbLAi2hZ9n8v++rKU+zG58oM5R
         4CHo3ozSEQ90C1pMELwC5jgng/XecqkvwN71KjV3TOwGMoDXibwOn0mp3TJ91XFtQhVT
         Ieo8tMQItEnw+mkAYI/y8wqiQVFCqZD0fQEGdLXN2U7bgbUOpP2idYsuiMhSWQUZvpJq
         OclpRzzhIRklnwHTVslHuIZxvMKMHrnagHEsDCjYD5RJ/cKKFcgo3buTkHpjnJ/4SogK
         prKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EQieAOVOLhTB9NEpVxq8Psmz1z1YFHo6DuhpKMUCRdo=;
        b=ZhIJtzHVVxdRAVE+l2f6xkg1aKVvXlyqE60miqVBCE4s0JJtyWJLmP5e4Mdk9lNOHn
         ad2eEGeCfclrU0Twmd9enZgyiJJ3odMRVOG0d2woXYdV5N+AUt1UYX/tQe35QFTxseLD
         u1jkTWHg1FRqRmsVD+eqbd0t9fDOqFH2SRdiyNQDcn9Ntyf9950gvngxnfFyI2p2blJs
         y5gON7bQUdsMSm3syrGwToPxSuYc0ALdvh/vsJ67SAmtxHaspTr0ARRta4RWG0pt1qNd
         utOCFaYuAQEqOpk+Ssr+L9z3VVjCGvBtyXTUsdRmrEaMLZ8zaBGky2+aEpXxY+S6yENh
         7sxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LRwz7uV8;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id c8si42286lfm.4.2019.09.16.13.13.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 13:13:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id x4so1439572qtq.8
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 13:13:35 -0700 (PDT)
X-Received: by 2002:a0c:e48b:: with SMTP id n11mr122806qvl.38.1568664815003;
 Mon, 16 Sep 2019 13:13:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-2-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-2-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Sep 2019 13:13:23 -0700
Message-ID: <CAEf4BzZVTjCybmDgM0VBzv_L-LHtF8LcDyyKSWJm0ZA4jtJKcw@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 01/14] samples: bpf: makefile: fix HDR_PROBE "echo"
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LRwz7uV8;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> echo should be replaced with echo -e to handle '\n' correctly, but
> instead, replace it with printf as some systems can't handle echo -e.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  samples/bpf/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 1d9be26b4edd..f50ca852c2a8 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -201,7 +201,7 @@ endif
>
>  # Don't evaluate probes and warnings if we need to run make recursively
>  ifneq ($(src),)
> -HDR_PROBE := $(shell echo "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
> +HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \

printf change is fine, but I'm confused about \# at the beginning of
the string. Not sure what was the intent, but it seems like it should
work with just #include at the beginning.

>         $(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
>         echo okay)
>
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZVTjCybmDgM0VBzv_L-LHtF8LcDyyKSWJm0ZA4jtJKcw%40mail.gmail.com.
