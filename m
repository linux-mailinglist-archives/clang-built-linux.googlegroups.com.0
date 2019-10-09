Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBS6E7HWAKGQEFFTKNZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 02510D1C08
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 00:42:21 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id i199sf3098307ywe.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 15:42:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570660939; cv=pass;
        d=google.com; s=arc-20160816;
        b=Avp2fT66XjdmihKhhcH7jRRTMTUmooVFOkEhuM/Ed/waZLbBXJdGAfcZvN1Lfyz1f7
         MNj8p9gp3fL1OflMdzthUK5xpQgN1iT5ah6F9z8si5rtY51bHO4n8zFWNzo5IOirGeG9
         Zn1xgM3dH7ngmRFdZTQ9QYEmbDixXi0l49W2K7QYNPWnyBmMHVDwLI4jst2pBc3wgLvS
         +JiSSfqk6BdF5B+1DQECb2qfzieZGgsXAHDLWVfnr1GEwr/S6gqOutiiSJ1RirRS8nza
         pHPmZWfY27qjaM9BZbaBb9X4w6rfHuyXxcZplKWK17sVwSCPyQaMfBKwChlahY7p+lXD
         5qbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=2qTa2pIPZzporCpSgCojF6P1cBRQtFX/Gi2JHq0DGAI=;
        b=DxROqfPX03N0yige+GGT41lUvdsKLF1QMgQllmSSjVUukPh3JCSi88DONtLO8s5UL0
         ogMvfYbvfqI5fwtK0h/m/l8a9wqih22zrNcdwtG/dhsozwSPhEbeRe0PxFx6yX0PK2ST
         8O5iBrqIZFjpMAwGGB4oKeyeBhHwVvY95uGJUhn3pE0ahmCV4zj4fwTzZeFJM9dT7SRa
         fxPh/Mfl6TXMqNk0uu15EPiUHtYFYfZpOPFzvwj+4hCtjcKaj0rCK50EAbHfOaTPYxtL
         2y+wS3xbJZ3QP/WIM/J/Bay92KZ8Y/ea3+U2uDSnxYxPbOIDHUvDcyB0VlLMzN4YX+AE
         6Clg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r9g+7EyR;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2qTa2pIPZzporCpSgCojF6P1cBRQtFX/Gi2JHq0DGAI=;
        b=o9im/bUEZn4bYG3vrVcnR48dC56dbtU6hOuTBc/7/ZJjUlHfAME/IHcIpPUpl2bfpP
         50o1KFG0TMQLe3c1hgUzfgjAiWQKXYZ5+dlWW3O4gj3iNOb/MvrWf7cX3V0NHFovVv8d
         yezQ3nbr0ox6ExEpY13RqY7C/BeLHihgSfq3sSPwbr9jEJLIqeDpKz9e9xyoqh2i6cZy
         8rt1AU9BBWehfNR/Kfs+0ADNrb6ry/io1OLP8oN+/5UtMeoq26y0XC58I05pLTx0XMjl
         ZW+P5YicBBQXGiQ/k/I5gEfxB0Ch0joa3Ba7GRda9zc4LDvY6LI/E85ZmjuS2trsflGf
         mHVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2qTa2pIPZzporCpSgCojF6P1cBRQtFX/Gi2JHq0DGAI=;
        b=ggP6ZlS0XUKEUo26Xmxf6756tETAQMdBP64iRv1BireTq3WX0Et0C/laFBfmp0Dj+O
         Qy7ZCBdVIpaq21BbbTvsUFwj0G+P33fsoi2qZuE60M4ycCKvIhOkSiLcBo6aU5cWiX2L
         3EHKt0KTKrKP2BRvxObFt9zInXbwzs7NVu11DUexqbsesc7tG1X/tPQS23PsFcl/AexA
         Wrxp8JF1h4QK+Kvq/X5nioalWCRglhO99wpQ7G9XZhPqAswArX91NhrO+n7gt6u6RuSF
         s5Dw9Kqy/X6jPUqY1I+nZp4yH1JQ99w67y/Gxhu+3YdsRcM+GqVx2tTUM7s4/mkYB2Ah
         koDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2qTa2pIPZzporCpSgCojF6P1cBRQtFX/Gi2JHq0DGAI=;
        b=Xt3lvX8XrAKF14cjBRfIQMOrQyWzmtiGW5pgHgpSjORUEbbxQYx7bSVT0A3RzVvDjf
         aGBVaMG/yIkB8YghjML1tN9KBjAGl0sBH0urzu3Bfyx5rZwOvAI7FpGSkH4zbvMHe+CX
         g53r7FoP/my1RbLH9ALqwYDPZpVxKNIff1A8a0WKrjFL3v5l+/w3PJRv2XG4G++TUPTu
         goX/XplphZDnsVkeESIv8uI6oq0MLx/+RYY9F5N+fRqaT+9gM8p+rF+wTjpvbSdVc6h2
         dCWBkLIs9F/M2JJecl9qlp+5QSDpUlB+ShJ5kpRMvaCm+P6AnGxF+YNxcMuRO9oVxOVc
         Hc2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0KRCk8a6bPUwxvj31inxpLIjUxlgl2rz0rKSvws5TSkLvwO4I
	Fc1P9VVHnF7jTIqtDkwe4TY=
X-Google-Smtp-Source: APXvYqyp49tQx02BOK/tiyR2zftS9bf3kAvSOFIo8hQwSsz8ihWA5KD8Y3GaHn41jMtjzeLxYq1NRQ==
X-Received: by 2002:a81:5554:: with SMTP id j81mr4614988ywb.332.1570660939609;
        Wed, 09 Oct 2019 15:42:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d3cd:: with SMTP id e196ls313754ybf.12.gmail; Wed, 09
 Oct 2019 15:42:19 -0700 (PDT)
X-Received: by 2002:a25:b682:: with SMTP id s2mr3947767ybj.344.1570660939327;
        Wed, 09 Oct 2019 15:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570660939; cv=none;
        d=google.com; s=arc-20160816;
        b=mnam15gSBYstmRfgf6iCW2XVMZRgXAMnoYMxR7nXXZ3p0AM1i5F9BWwjj02+oMmipy
         i5fe/FXzxiecGAmmB4p9G0/HWWReit4ypmC+UwhdKz5/XBTVPg9Qijn+qWIVjw5iPFGU
         Jq5xTNNfoUs5/q1PvZYXKmhZ3ui8TQ3lkj9mOtkEXN8CVoVlbvoo0HQsRzApRdaDmoFg
         IUXydzZtgTW4p/NZXX6m2oWZehigKf42oVJZFqIyMrGjQX/0EquaMRX03PUqpHUBZIAv
         IwdZG2YbNwlxs+uH6+yM5Pdy3h39cBekAFpHoOTWiXeaqsUQ74ywMZ2f7tqCDW5F3VhY
         AKsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OcZVhoygDFyHDzYuA43lN10l1MvVKVVY2j3mhC7PG6s=;
        b=iqGnWHhvGRE8bIRRa9RfAO2d+2wS+lKYe65xmlrdvh3Xmt5tASv2Iw21MJad9A585V
         s3b3XQ7dQSBVyUfMfN6Rim0tLVVP7+nbfjcHdKRRLMgLDup42UQs4cyrEmFJhm0Z5y+8
         84MemmQRZVQ2sdbwKNUsqlCI0HLGAv9B0CfzAmrN+tp2wTopRXyh+N5B8vVvoowoVlPa
         /uoPS1iryShyj3arZmyk7ckTXnkhG40HXCMYHKZ8DFnO67W110i34e4mg3Sp0dgblliZ
         VxqLYW8ZrDkPf8AfctoCdLO8cwsq16f+fg336YYltoe0Q38rJcUBumqAqxhfRUEsGthd
         bp9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r9g+7EyR;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id p140si400263ywg.4.2019.10.09.15.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 15:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id w2so3811807qkf.2
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 15:42:19 -0700 (PDT)
X-Received: by 2002:a37:6d04:: with SMTP id i4mr6365560qkc.36.1570660938689;
 Wed, 09 Oct 2019 15:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org> <20191009204134.26960-2-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20191009204134.26960-2-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 9 Oct 2019 15:42:07 -0700
Message-ID: <CAEf4BzZLL=mL1nnyQ2tgGzLnaLBm+rzBOGrBp=KeiLzbo3Zcmw@mail.gmail.com>
Subject: Re: [PATCH v4 bpf-next 01/15] samples/bpf: fix HDR_PROBE "echo"
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	ilias.apalodimas@linaro.org, sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=r9g+7EyR;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Oct 9, 2019 at 1:45 PM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> echo should be replaced with echo -e to handle '\n' correctly, but
> instead, replace it with printf as some systems can't handle echo -e.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  samples/bpf/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index a11d7270583d..4f61725b1d86 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -201,7 +201,7 @@ endif
>
>  # Don't evaluate probes and warnings if we need to run make recursively
>  ifneq ($(src),)
> -HDR_PROBE := $(shell echo "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
> +HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
>         $(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
>         echo okay)
>
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZLL%3DmL1nnyQ2tgGzLnaLBm%2BrzBOGrBp%3DKeiLzbo3Zcmw%40mail.gmail.com.
