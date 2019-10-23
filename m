Return-Path: <clang-built-linux+bncBDEPBSN75UNRBEETYHWQKGQERHDIGUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id A9264E1AC5
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 14:37:37 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id c190sf11707815oig.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 05:37:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571834256; cv=pass;
        d=google.com; s=arc-20160816;
        b=nymC5xyiLhCSMO7NQ2idtFjJmWqsU2sgLVankSRJKbOWG2qqmY/SuU1h5D8wah6hDG
         G0SLlAWix6+tmq8J8LfW++8/Dqkf1e3+eSWIU3RQupGaIQK1Ea2DngQPOq/Op+B1bYUe
         vH8dBsiH0L8tWv8vyT4blaQOvnSNeV7l6CddWIus7aWoq/EuMEbMM1pxJLcv/bzS//HE
         0b/h9QW0ZrRqU1LKaRavBx7GgqRY6YLP7ZAYL9uQI5Xy49jscY5KJirq+kSSZWX5J1uC
         FRl4BsNwszb+jgcqIK0PkiEL45qFT2FDD64FZJUnI60biamRkBvpzNwYHM7uA2+i5YWF
         CgPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=0iGy2OZfuhtWiEymS0xL8hx6oDXsiU0n10fD/2sWckI=;
        b=A8pc6d3hUctue3Ed4plocVprvkKMiOHYEI2ifL/39KOMbTSJzO7LeK02fIVb3HRhWh
         9mDtIkkEkh5HnRVukFGrvFXJYh4hUKEtq4+0b0ZzDsTZ09ZuFcXszIo0zVD3XwldOa3a
         G/6JBE3LT52IGMCQtVWdmR6C6uQTvo53G9m9MdAa+nR56O112cgliicLRpuNqFcFb7Ga
         JFohTTIxbuoRgShl/eInCn0dtCrlJUGzj/tvPMQqMcLJ4AWw74/GZ9CSIYHeV9vHKLyF
         /eMtZkzofz2ixECg5i7M0izwLXQwKQOrkzuIr9uQNWMXmfRmy2u3tForGHU3Xm1Q0U4C
         NXKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a1zbOdUz;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0iGy2OZfuhtWiEymS0xL8hx6oDXsiU0n10fD/2sWckI=;
        b=T8M5FWR/ci2+96u08LeuNacRwmV6TprTF/dPwEuQUo/+IUitr/mfDa4SrYNGGgQgtg
         495YkbUe5pNtu0Cx22NZ3hiK81V4p3a9rTGKS1gU/VkpKEWoMELL0k5rg8KREs/ydyjj
         pqyeOKZrDo5yPUs5RFyGF2f0XFonIqevsTygnh2ECv0Tl5udNuLGxaMYONXRcy2Zc20h
         Y4HLI239CMMIcmOaFcxf/i7xUj6Ebzo/24UKKJZ1ZCRaKbJdve2Ht0iyJ88bZecjUdrC
         vvOlqy0O5sMClDRR+1FzZAqAS0vYEeKzJ7jvYVVVe2QXUxs96AdXHb3lg0zJ/VY0E4kC
         xIMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0iGy2OZfuhtWiEymS0xL8hx6oDXsiU0n10fD/2sWckI=;
        b=rVTLzdcZ9s0+KZ3ssTtJTEas+faGtl1BxjgyOeVZ4aw+D9R6YJZOeQpL54b8lPY7fJ
         Xb9GTEyZ1Ka/kDOQSiBFaDhQKSsId8ix5r37hOMEW/dsRRU71SiSW+0UOiNsQRkcbCre
         loQWTDbUWWGE9P4AK6soW88WoZAmL3YXP3DdVR5N+8pDTpqfCCSZT4e6K93jX0/3ZkVb
         Eqaa/d9Bn95St3qnK63uqkEut3+j6tkDiueH0tpxS5HbRzrj1vI8/YSikPgC1GfzFwyQ
         XbPowISHSwbzuyXlYzXSQpcwp5NEnEuYbwCDJ/MqehG2EQtc9Unntju5ZrkO35jD81FQ
         xGVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0iGy2OZfuhtWiEymS0xL8hx6oDXsiU0n10fD/2sWckI=;
        b=l+rScO1Yh4hNeYaChs0HmT8xJO78luzgnXOZ+ai5cNEfhpnA162Lt5xDWcY0mNpJLg
         y17zR1hKMGywXHG5LjybnUXuSJk+wgSZw8Q5Q2pLXkubPT2wiRcOm8/eFrSTUykbkl20
         BbSc0J2/E/PiyxGUhUBQuUeYeB4/NCrDLXSvPVKuvyolYWN+GY5nDAwTJMXITRyWBAMg
         D6bnN68Vbg3+RsQeIYb8Wt2ffBe4uaiRCHVDSh3AJSTxPQzh2wmEQJKdTOq+A5o7fUjT
         5qwCzAaUAiggfDeDsO8wfaCouyeYg/9jkAr564d3Bi9/Ydb35HfiuIE1lW6VblOY5ky+
         G4jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTk+xT8Pi2Qf8hSCIIW/URpI7fQXIEeJgnIiSqoOMGKRnVmnDn
	LlG8/bmfKrB1VLXZ/RfUPpY=
X-Google-Smtp-Source: APXvYqxQ5TN0GmGzwEN5tPcdInVr9jJX7huYHYvRNKLov5+yO890q1ryF1ewJDM8ZEZIKNILnL6Mvw==
X-Received: by 2002:aca:f005:: with SMTP id o5mr7294997oih.36.1571834256515;
        Wed, 23 Oct 2019 05:37:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:688:: with SMTP id 8ls618479otx.9.gmail; Wed, 23 Oct
 2019 05:37:36 -0700 (PDT)
X-Received: by 2002:a9d:1eaa:: with SMTP id n39mr4933011otn.255.1571834256061;
        Wed, 23 Oct 2019 05:37:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571834256; cv=none;
        d=google.com; s=arc-20160816;
        b=yF9FZcsXvBz9hMPcBsZ8Ax/J8RSeu9Oq8fkoMow7xZVeT205lxNGoFCkL0UF0I0Y/j
         RpkHWoUXY4nB5YZMYw4MA0wgXYbV3iuHUUCjIc9Lvtb13jObtQLHBtLfwlRRbv/Y6Hq5
         MJ60OpC2l2MuoU4vH+X1JsruktuPBQbAh+vgUANwS+b36uGT++MGNzfp8r90FUy9x+7n
         g0eVKGi7JQ/82pDPoPqiZ6ztygnd3RujSTa0gptFn4WCdSo0C96FZTNbdA/BJZJJL4Em
         GdF0NwlguIX3/CME6JflDpHGpmnH8WqmN5S1ie4t0+YOgY/A04d9lP17Pan62Ym50lJT
         qnVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=qUcU8tYS8AaPxbMdH2brsHpiQ65c4Xn61wez29PlY7w=;
        b=Dq3IW3vRfVUlUBbt1ghVbZzfcTzwHODnG/CBMHY/5JfHATTmfzJhf/ukWaIXR7FEin
         z/raW5CMu9a6uaEOFdE/5oT+UYAq6s+l3sb39hZ4liUsHifC69zM432mgcQlo9BpLdP6
         TkR0C9wU0TWNR1+h6Xf0bLGybfojVOPzee5VU0vFdlDJd6lBHifN1OUQDdMjko+iBtLr
         6v95zAFSML9dE8/DlDxpHMWyIJJesBD7SLX6Q4+YhO52MinOYekGg4BjuNxmk85Vi7HJ
         MtQnyFUDNMx0N7PIHS6Kj1Y7MmlBVA/IL2n0+Cr2WSrx7/HywqTU0NZLkZLqnihi76ME
         bNpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a1zbOdUz;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id k61si849427otc.1.2019.10.23.05.37.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 05:37:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id m4so2622987qke.9
        for <clang-built-linux@googlegroups.com>; Wed, 23 Oct 2019 05:37:36 -0700 (PDT)
X-Received: by 2002:a05:620a:a53:: with SMTP id j19mr8350870qka.11.1571834255264;
        Wed, 23 Oct 2019 05:37:35 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id g8sm16132987qta.67.2019.10.23.05.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 05:37:34 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 2EC364DDC9; Wed, 23 Oct 2019 09:37:32 -0300 (-03)
Date: Wed, 23 Oct 2019 09:37:32 -0300
To: Jiri Olsa <jolsa@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2 4/9] perf tools: move ALLOC_LIST into a function
Message-ID: <20191023123732.GA15998@kernel.org>
References: <20191017170531.171244-1-irogers@google.com>
 <20191023005337.196160-1-irogers@google.com>
 <20191023005337.196160-5-irogers@google.com>
 <20191023085559.GF22919@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191023085559.GF22919@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a1zbOdUz;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Wed, Oct 23, 2019 at 10:55:59AM +0200, Jiri Olsa escreveu:
> On Tue, Oct 22, 2019 at 05:53:32PM -0700, Ian Rogers wrote:
> > Having a YYABORT in a macro makes it hard to free memory for components
> > of a rule. Separate the logic out.
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks, applied.

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023123732.GA15998%40kernel.org.
