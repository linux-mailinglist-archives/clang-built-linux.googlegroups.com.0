Return-Path: <clang-built-linux+bncBAABBPOP72EAMGQEBGYSSZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C053F2CA8
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 15:01:52 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id a62-20020a254d410000b0290592f360b0ccsf9506898ybb.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 06:01:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629464511; cv=pass;
        d=google.com; s=arc-20160816;
        b=BQ9lbQOjyGwKTohA2a10gHYXT9vVDsFYcgr7QowVGjF5dKT+tQh1MlAfYlbG2A3IeA
         Dp64UVOr5vT5JDN8Qpo94lPNHKqdJbMTaUzIhgySq8Qqlj6zKdSn3S33L8gYP/7SJSGv
         wodi/a8qOuTuzuB/INH/PpL2wTOHKSdRdz3QkPPNxbNPV2b8drs6U4nrB828Aje5q0pW
         tweGeMg3bq4/PTmuohJTaS7uQ8haAhUmk4IIPH/UOBm47vijJ54dROcFgEyDCLlyCAnm
         Ndw74+q6DTlVEFPy84Sk66owtmO2ZY+hQvV7nw5KgAfvSGugN7G6+2L3x3/vpJaQs1Jm
         ahFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/289XqouTa7rPM5u4zvEmCQtwbRW9Vsg4imz53YOnmg=;
        b=eJkkHZiVFCjhGaFf2PxZ49zDZACIDVScZyAIpeb9hgHtRh/84qSThp3xiBa9V/sFyp
         LVISFFM/qv50pB9HuTdVHXfmPMQlv+qBmWvzDJ/dhH4m4eSTOS0JYGIiUYiWSIEKNjqe
         XSyq07Fnt5eUXfYCjJsjdCuUtGmkzccYLnOmRjwweqolGC62kkPnr9I8iVB7TWAmRLuH
         BPv1d/som7t8m6F9Xk6qx+0WKZYxcsvdR+gEF0subagT2+Ir26kXB+4g+khG2b6TKzQF
         hh3Sx9TphUxD0XaeMpnNV3YtfmTEDMzx/WJMABcaK2/NUBgjGgrhHZUOpDlWXxvMyaEk
         KoGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iL5B0Onf;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/289XqouTa7rPM5u4zvEmCQtwbRW9Vsg4imz53YOnmg=;
        b=NN1sa1oIjLKHzsV3BOR5ALRBFrfEmOsAyWhTXt4c7XD2JhryFUvH9aEH8eCXgZkQNy
         DBvJ6ufpX2RMK1erH+LLp4MMFRTHC5eVZ3DApt1rzNRP878I7JEGrZaaQoJi/fbKTpny
         7wUPcU1ToqxhhxuWsctpg2qm1RlrRJVIohTc1Ynm8ZkUy6AhUwM0K2YPHfd7aIdFl7sa
         Na3aIORhrdoC+3YaiDJ8m96CJDSUx+C2alY96mknBLzFVulN6JPDeLQSdXIyyNZymFpP
         ragJsGF/bw2brvGmOzWLfn6lQru7Uf2M2NOpO86AfH/r6Q6HTVuOBCRmfRfTJMGyvLS/
         Iy/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/289XqouTa7rPM5u4zvEmCQtwbRW9Vsg4imz53YOnmg=;
        b=de+uptIhtiU1swZt61671ZGXf4215vNYNHtYKltDIqywsI/dSDLh3fAfI3Z4ZVyYx4
         ImfglokUKxkykLv1y7+ICU68WGi5Fi2Oeqvom0Wrl+nWL8KJEN0PblGhHF+8MlGps+5y
         oYf0l0VYCPdgFYAYaNQ57TFp501s8ppee3ie4A83gAA57XgmYErMBvt4tvwT5PYJzcRH
         jk/RFe+yw2mhHnfDmBaUUTjALpU2PMlluHQOCuiW8waTcqiZZuczZYqie/pB6YYqf+H/
         gA2d5KmDPUR8yeXnEcmoymwhXtpMVCWgj6bNjf0nJrpDkZJmHrtb96Fz3ALD9CC8Xcj3
         2sCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lXJ5a/WUISP5wxiy7UbmWZ48mNYooDIFVO8LPiDs61W+xFhGW
	HPKA+Ko/Hh3++MFcPpZRZMo=
X-Google-Smtp-Source: ABdhPJwr8FLLwWFVBoxDEoS04uMOUq3SsAR+Ak9aGRBJgViVxXmEq6QUQKWaD0roE3oaXS755I5HfQ==
X-Received: by 2002:a25:8445:: with SMTP id r5mr26479157ybm.20.1629464509685;
        Fri, 20 Aug 2021 06:01:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls337731ybc.2.gmail; Fri, 20 Aug
 2021 06:01:49 -0700 (PDT)
X-Received: by 2002:a25:cb4d:: with SMTP id b74mr25486780ybg.215.1629464508861;
        Fri, 20 Aug 2021 06:01:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629464508; cv=none;
        d=google.com; s=arc-20160816;
        b=jdxN6B4nutK7LWuY4VNHS9MAMNTo8gsuyE0Oo96gEC+ANqr509sTCawiMGON9oxKWO
         pArDq5DmFpoQE6AvvsLV3R80DALiQBi3qLIGiumweX+4yDTOMxpvdD0ro0ZYkFxVO4B4
         TZO9c3HRTu68iVLU9e2CcVZgJiTARPFaLm/KofqlYYfWf2cP0ur4d8oxvd0wp0ybt/k2
         nWZacEEGkyEu4MSaDgTCU8+QMs9vQcpf/ZJisQMHwD/Mr1vfyihXgzjbYGJOcOVCCKCB
         HqHQ0gQuEEB3auDKokrH8Zbl0EjD0zYmqbj2j2pZKdzOgKnrmbl6fDD7XKXMnbJDyCv5
         Uwqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=ScDvk9zcFIf9bojjto+UTRnOswQ5Qx/xL5oEi38eAcU=;
        b=RKE+EpMOi1j5yZXqHKsgm+A39MJFzBPzRvFt377ZakDwWIWfznkzhAPyh/Dp+7NrOi
         W0xZNFmJm8RO6HhLp4mRAZpoN0ETE6Nz3o73egOBAlox/t5X8354J66tb4yLbMdjf1OU
         vLZDB1EKj/R63K0Fg5WxfV6iK8+Oj7xtlMQPGkNCmo7Tb0+LWLKf/bARzPaNm2K+6Fh5
         PPhmCk5PrYb3p2i4CFfqiGxtfpA1JHgLyZFmB1JGSuk4NxuVISwSbVAbOeziZBNpfPS1
         8Qwx5KeVPmVXC4ObOQjyDzmK4vIRrtimA2n68cS/utknP8/lnnupoKnp6AjwzsuuPR36
         ay7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iL5B0Onf;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z205si508469ybb.0.2021.08.20.06.01.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Aug 2021 06:01:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 240D760F91;
	Fri, 20 Aug 2021 13:01:44 +0000 (UTC)
Date: Fri, 20 Aug 2021 15:01:43 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Kees Cook <keescook@chromium.org>
cc: linux-kernel@vger.kernel.org, 
    Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
    linux-input@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Andrew Morton <akpm@linux-foundation.org>, linux-wireless@vger.kernel.org, 
    netdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
    linux-staging@lists.linux.dev, linux-block@vger.kernel.org, 
    linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
    Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
    linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 22/63] HID: cp2112: Use struct_group() for memcpy()
 region
In-Reply-To: <20210818060533.3569517-23-keescook@chromium.org>
Message-ID: <nycvar.YFH.7.76.2108201501340.15313@cbobk.fhfr.pm>
References: <20210818060533.3569517-1-keescook@chromium.org> <20210818060533.3569517-23-keescook@chromium.org>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jikos@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iL5B0Onf;       spf=pass
 (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jikos@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 17 Aug 2021, Kees Cook wrote:

> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Use struct_group() in struct cp2112_string_report around members report,
> length, type, and string, so they can be referenced together. This will
> allow memcpy() and sizeof() to more easily reason about sizes, improve
> readability, and avoid future warnings about writing beyond the end of
> report.
> 
> "pahole" shows no size nor member offset changes to struct
> cp2112_string_report.  "objdump -d" shows no meaningful object
> code changes (i.e. only source line number induced differences.)
> 
> Cc: Jiri Kosina <jikos@kernel.org>
> Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
> Cc: linux-input@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Applied, thanks.

-- 
Jiri Kosina
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/nycvar.YFH.7.76.2108201501340.15313%40cbobk.fhfr.pm.
