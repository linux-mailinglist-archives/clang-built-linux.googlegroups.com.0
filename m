Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBXEMQDWAKGQEIB4RWSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 283E7B43B5
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 00:02:06 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id 18sf638169oir.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 15:02:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568671325; cv=pass;
        d=google.com; s=arc-20160816;
        b=hEL20FzyfSxIVjnLK7fLs2Hp/FS53JoIqLtSNpWRSsPG+3LWTFcfdzohQRHS3IcmDf
         EpU7EoHKDvJWx77F1efcBv/yxXN3MkPx5u/0WEyvhu23JFgnhLAbedtLByLldGHIB85Q
         i/egqihPPwy5oSMHAOAX8ver6ENaHbETFMsz8loGHHLT0F3RBrg+gYE+jeRdV7CNlcvP
         XJqMv4g/+10sfCPxnIHbWjhwaeuWuKEWyk3noAU65iNt1XmAIt0Uwifm8XyJ9tJkSQsp
         Fsyc7mOvxmDKLzkyDA700xnYbOVaOkjO+pTfLjG2Z9Uu4SeGlvuzMT7W3YvTm2LAGa0A
         fYSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=v5YHHQLe+AqlD9N/UZVtxQOCkeKt66zts91R3WcAmC8=;
        b=yFcxFIM1ehkoL+jnolgICN6pjGy6s63IceZQ9knu10P0xuEn50VxZ0CDjHH2m8aSy7
         Hlm3jmX0vSeSekdazvWmYhPWz56rgiCA014yBVBV9l5t1hoQgryGzcbsE8Sk20sxebHI
         pOH3z6COg0m05HwX77qw8iD59pd3uSe2IrVv8fjshuXFilAMQezXeaBGoJj4HnwmRhpz
         wwBkjbHyTIQYg0WYmrPHFeLRblQU9KmmHjor2BHcMDbFsCVgoGRiKbU5Vh1m2WhsiV03
         /+4CtJbWQCbkzZeuC7HXKa7xRmU1F/dfhJSLuK540SQkU5KO/GxvBs3oiVjPHamY2Qe1
         WV3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DLKtESLH;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v5YHHQLe+AqlD9N/UZVtxQOCkeKt66zts91R3WcAmC8=;
        b=kk7ypG1zagEg2N+kiYN+Y6KgDkkIOynsFvQW1aOyFo9+3lIVWb73Y0Hz5UWHu3gv3Q
         4ZWRjrF+r386cYjUkdxupuEzQWr8e//8xN0Q/laLGa/hX8MSt7TWUGkKKPdlUoT+4kEI
         3/eV+gzN5azjhtw8rs6Ym3VYHJ/yCWDi0C2lL7kd+bB9caGzGsho7p+dyygL34qcA+Dg
         zjdCPg8gBGi/0SHjZ9jQt026hSbKSshMUY5rT3MewoAODycJOmqZnLMnpFHagbYSYTZt
         9+4AQP4RwnptAHBHck4d2Rk63GJbPz54tqM/pUGCbD5L9R17PXJk2dvmnv9fZVgEFUB+
         pddQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v5YHHQLe+AqlD9N/UZVtxQOCkeKt66zts91R3WcAmC8=;
        b=p40tmsVF0yDcoc+40SOShNVOCThJ3n6xTU1n7cC2KrM3Lhq35hFTFS5iACWgox7wjv
         BpZCeBga2bOEOvwFyHA7TNPoEr0DE5+18wpEzPEWT/NeP8Z5Qn2MMGbOjEDyDAZJ4Ejj
         l2cZyE5nMfFd0Nl7ltZJP4QoiKExYH4CigkiVuWR482PAQAIQpclgNdskO2LG24ZCwUD
         FvhdtIsJpc5kIvOmLvNtnWTGC6Ks6ixpQiabze1lvw/xGPyclhPS660C4/HVIIrY7VDE
         SOIMeG+U1Q1EBWKtBBlkQb866yHhvfgatQC+1tC2X4+IPiqt/TLvOVBydbWQnJFMYB1D
         iMNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v5YHHQLe+AqlD9N/UZVtxQOCkeKt66zts91R3WcAmC8=;
        b=WrTlxiiqTQQqKP6WrN63HjpNNAcw2KC8ISvUDccq3G9CNCql4KFg1fqbs14oxJ2J4q
         5SLMVfsBdZ/xNZUSjYJp9Y0U7C2BjO2bCkkaGI8hYrkpGj+YbHWAeb9hbuMqkezFuYlM
         AURSoktvq8Z+bkLOvVlAc1G8Og8yFbhASDKfFg+j2HNqaldlGhy0wzFIxOfbnlJdTl2+
         qauF9QXwgJ2pZGo4dIfTRgn0mCNgiiazgwpqNaKMhYF8U21dYZqCnjYAo2zK59IxqteO
         Dqf6g+dmh2NvC7rY0+IOFEP0+NKrDRXpTCLQhX1QM+V5/1oTH64sTX9SI+YhxVq4KDah
         +WRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXnrQYHmEr9oBFXaud+fEdFxzSAW6TSRRTnbVh3I6xmS4tuh6+3
	b+w1Ska8BB1K2gjj+BZasro=
X-Google-Smtp-Source: APXvYqzjG9bRge1tZFK+8s9TTbENRb9h2qKoV4+Hw4cr3JPcYZqLe/t/KNE+dnZZ5O6NOZEBbcKebw==
X-Received: by 2002:aca:642:: with SMTP id 63mr1382521oig.10.1568671324673;
        Mon, 16 Sep 2019 15:02:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f4c9:: with SMTP id s192ls238032oih.1.gmail; Mon, 16 Sep
 2019 15:02:04 -0700 (PDT)
X-Received: by 2002:a54:4105:: with SMTP id l5mr1302378oic.83.1568671324338;
        Mon, 16 Sep 2019 15:02:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568671324; cv=none;
        d=google.com; s=arc-20160816;
        b=Lo/r9uYJ06WlMjEe+h0C0nqqycYSjPOn+f/jRlU804CNzhDu6Y4vcIEBQvDOYvmfHM
         Cl0uKf3/kM3xTzY4UJBU02qevNzY/giDFsl6mhe/o+GTCCxOAFgEDIjpRAIVfWKjxQ5D
         enrS7AnZmVRkIOd0MGSm9Yxvg8aMncOZzUH9cerqKFzw4MmIygCgkeH7lPC4JpP4BBxS
         WTTZPZMigwloWNcph5S69DDrOFVDll7vlxT9vB0CyIHHTvfoMVS4o3juMayOgTE2TpSg
         hNR0PlTIOs+E2jIG5zEZhvgnJ1ci6G0NAA0YoMsRRER7naSWVpwK1TWUFJLw0d1ZnRQf
         0wLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bBLyhw31asDlP3KaGnYqHfV7kPwJZ+ePQIhLUhYQq/A=;
        b=jrryJyWVNgJqg/F/F0ZY0pGIPuryAIisN7gJIzgxmZFrF8miCItNOG7vxosCvbEGc+
         v3guu2OmaRBjMKnBH5lrJdiIQm4FAfNO04rC9jp8f2Smndl0eAuCsbtcNin08JYt9mb5
         xmLcPQ8nh8FBLX4cUSNXBtYDvVfXLB7BGtnUYCe1yy8kdGcTPaqL9thsxOAPX2B/xutQ
         iMexQIReu9yO8cVMNA46biVsgIpprgWL4JpjIJwBlTAWNf6g5kyZAcKE2XUYZ/EN9Qdc
         wMJ6dm1nXpB9Nw5iJaz6VsiAbMhiao03jZPWaDkzFxFJLgjwA+PRsPhIfOKbRv3HQbAy
         ZGsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DLKtESLH;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id q3si95393ota.4.2019.09.16.15.02.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 15:02:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id 201so1609408qkd.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 15:02:04 -0700 (PDT)
X-Received: by 2002:a37:98f:: with SMTP id 137mr531581qkj.449.1568671323725;
 Mon, 16 Sep 2019 15:02:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-2-ivan.khoronzhuk@linaro.org> <CAEf4BzZVTjCybmDgM0VBzv_L-LHtF8LcDyyKSWJm0ZA4jtJKcw@mail.gmail.com>
 <8736gvexfz.fsf@igel.home>
In-Reply-To: <8736gvexfz.fsf@igel.home>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Sep 2019 15:01:52 -0700
Message-ID: <CAEf4BzZnv0Cy8KTYaso-G-TYj_UM6MbEYEi_d14DmW2W=VuLhg@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 01/14] samples: bpf: makefile: fix HDR_PROBE "echo"
To: Andreas Schwab <schwab@linux-m68k.org>
Cc: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DLKtESLH;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 2:35 PM Andreas Schwab <schwab@linux-m68k.org> wrote:
>
> On Sep 16 2019, Andrii Nakryiko <andrii.nakryiko@gmail.com> wrote:
>
> > On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
> > <ivan.khoronzhuk@linaro.org> wrote:
> >>
> >> echo should be replaced with echo -e to handle '\n' correctly, but
> >> instead, replace it with printf as some systems can't handle echo -e.
> >>
> >> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> >> ---
> >>  samples/bpf/Makefile | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> >> index 1d9be26b4edd..f50ca852c2a8 100644
> >> --- a/samples/bpf/Makefile
> >> +++ b/samples/bpf/Makefile
> >> @@ -201,7 +201,7 @@ endif
> >>
> >>  # Don't evaluate probes and warnings if we need to run make recursively
> >>  ifneq ($(src),)
> >> -HDR_PROBE := $(shell echo "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
> >> +HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
> >
> > printf change is fine, but I'm confused about \# at the beginning of
> > the string.
>
> From the NEWS of make 4.3:
>
> * WARNING: Backward-incompatibility!
>   Number signs (#) appearing inside a macro reference or function invocation
>   no longer introduce comments and should not be escaped with backslashes:
>   thus a call such as:
>     foo := $(shell echo '#')
>   is legal.  Previously the number sign needed to be escaped, for example:
>     foo := $(shell echo '\#')
>   Now this latter will resolve to "\#".  If you want to write makefiles
>   portable to both versions, assign the number sign to a variable:
>     H := \#
>     foo := $(shell echo '$H')
>   This was claimed to be fixed in 3.81, but wasn't, for some reason.
>   To detect this change search for 'nocomment' in the .FEATURES variable.
>
> Andreas.

Oh, subtle... Thanks for explaining!

>
> --
> Andreas Schwab, schwab@linux-m68k.org
> GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
> "And now for something completely different."

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZnv0Cy8KTYaso-G-TYj_UM6MbEYEi_d14DmW2W%3DVuLhg%40mail.gmail.com.
