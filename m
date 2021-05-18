Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBBEJSCCQMGQEPET53FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F0524387F6C
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 20:16:37 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id l1-20020a5d8f810000b029044347605f1bsf2009104iol.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 11:16:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621361796; cv=pass;
        d=google.com; s=arc-20160816;
        b=LEY7PjQCeDdBPRWwJXIiyOJ+4PnaZEyW59d7qO3FsNq6c/2ddf6LaBsUS+1DyDOeMd
         S8hsQU5LKaCCp5HDdocRHzmk4uB0Rcrj2UhrytJQ2F/vlCaMyyJIFULzHHgfSa5Cl/4p
         Q58yXGtlDoBUAv8wweGXb6Ha5AUsWQBP91Euv2sltQYxnK2YVZcnmfQQke+XjBDWtsHV
         0oolgnuloZdTE5Il7CozUy7vO3VcHmVE6PodF2crlyMS3kUUlReSNriFCik5QITzMrAn
         5aBfGP54KyPRX0WxIcYbVi05lRCsPp8bUnK3B0+Rl1MnfFN0xxan9dKEA70RTSuEALRL
         9csA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=B4d+uT4jurTQoKhU87ANuhytJXZsygNd6WJ2m6jGLbQ=;
        b=aFgqZN/8uPyfEsp+WBZ6aV5BEPP961xMrLGescnre2tNzzdZAC3SQUWsn8iey+Fm3f
         nizi+LuGSqivsp8zq+ybfAs1YtD3dXcyYgsoyfApxhllt20bQTAiLX0bEudw2iam2KIl
         UOf3i65fN0KYPm6vKCYQOASa/0ItQgUPEFM2Hm+cXWKxeirS1vE6WdCHHwQOHENAkp/Q
         h/45XpM1AxfW8AoDSzbS0CqE5wJQNt2qS723C+OS0jj1U537vwfeNZc3NmcazqAkoEad
         aqnAb63eiZi6/DfFQVZuDjlN9z9jRdzmHeZgyC/7nTcTSaaQDZZODIoaBD8kdm7UnGrS
         5dhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DPYgBj+7;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B4d+uT4jurTQoKhU87ANuhytJXZsygNd6WJ2m6jGLbQ=;
        b=g9kj3FiWfTExLf57xW3SYDqUGRdwiBYlo/xZ3XlU+VOp7SiIZyV9x0xtaqKPhArWlT
         ZxIi6phuTcJQUACe5brLpuGkPBGRIRY5aO0Tal3DW+kAdm9RDiCkOJWYNbbi3LquiOg/
         nSqcD3MeQ4ashUCXwIoxayyPuwg5VClir513pRkfvWL1ql4JnQXHh807geckRwDqTx9d
         dE/0d7zDlIHSdGxlD/iIwlo8VvfStDK1xkWFKFsgMwRxuuYgske1nh3h2sH/boin+IK7
         saF0+j4PgLJWIy3N0CV58CgVxU6QdPko8takD8Sp6uXuy0LJhBWqz+Kt1MPTLmIkvE7k
         Lexg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B4d+uT4jurTQoKhU87ANuhytJXZsygNd6WJ2m6jGLbQ=;
        b=gjlkHA/msmvVud8YSjWHI2ESo3wxEq2ae3uIXSO4DA/3lGObxFMRUUkRj+qevILqKN
         fpI97KeTizEi3AOunV05WvT3vE3MsJChD4801GuEYA+C7p/T+1tVI3uQldkBEbfuOaze
         x2e/+B0lC32DSQI6XkBS3T2IrTEC3KNajQZnh/00mRPgZQIqtGzZgZhhMhj4+lHa7InW
         9GuzFuTpAPy7ilUBTuoGeHGVB3czHXDH+EcQyQdMcMQUP9G/r3mDTHS86LdKekqZRgm4
         futu/zJO3DWl4ntPJuJuId7Qv1ZV5lebKhEluhF57ODMAyHRZnleNUfixNRuHMZD/+aV
         ZNkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B4d+uT4jurTQoKhU87ANuhytJXZsygNd6WJ2m6jGLbQ=;
        b=AOvYPN6gbpUyoczCO1PDXNt5gsNRLZz9n/kQf0lomtK5MXQX2zPUoCqQ3wtkpQOSsr
         p3gq3sG89IrflzijY5nAzbFJHylNM7kU9mNc8G9JYmT+Kofilr2bNyAL4koZMm5YFECs
         i33N2FRHwR2CFaUERTzHWVRWxnGLlp+40hIb+jAIdww9HTR+xqy6miYOxSqZk4xGUb2M
         0xTKREvtrH7Vlu86TVLJKi4XbqLXcfAuPUIu7Ne7RThYGk2HV3idZeZfhMoB9PvR0bPn
         0Fja/PTleZ0Xz5Xl65s6HnlYoVSdzmVQJ5SCCuv8k6dG2UJNUPdnMTXFltQrsZB6yf15
         UsJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ysEfCGMxD8fcVL8OtKTm1zif4rwW4XXKLEj2M0+eD3mFP4yRI
	v3m6rmnM5hWSx2zPltoraws=
X-Google-Smtp-Source: ABdhPJxmZ9u64gTDtDdtzQ/booas/IrNf5U7CwUES6F8+2c0/ztdWuYU1P5rsvXZy/p3LN2o3EHlxw==
X-Received: by 2002:a6b:d913:: with SMTP id r19mr5446673ioc.110.1621361796667;
        Tue, 18 May 2021 11:16:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:d002:: with SMTP id x2ls3296512ioa.11.gmail; Tue, 18 May
 2021 11:16:36 -0700 (PDT)
X-Received: by 2002:a6b:5015:: with SMTP id e21mr5448688iob.104.1621361796261;
        Tue, 18 May 2021 11:16:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621361796; cv=none;
        d=google.com; s=arc-20160816;
        b=r9Vs3unzsigvZJAop1BS3Mf5WszpNg4lN/ssa26OGs4IWLDgIBI0eF4UIAlDsCPQy1
         riaKLNqY3JknNchA8pSVBfDSNIAf/Ro7i1c/1hZseljrNyiSn5LCOFVRDDfEbiPs+Ljd
         WNdXZwFIOlMiRGBZZz3YLzx6WtWItMdNKRdRcs27UbBf7czqJEf4g2W7W0Y9FA9hMCSi
         K2Y3QfkolFYb1J2j4dVLiAKsRR1NugjP9yPX2xZ7GwxUSN2RKXnl9tk2ck9Y0RfYaW5Z
         CoQjyrs9ptP5iOQVS2tBviILZwFbcKAFm/FvVnHdCqmb6Ledb1qcI4IiHQfT62Xo1noL
         GD+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UAbLkWm6PRRnI0f/YBcd2UnkYh5PZhxMV22HzCqG9iY=;
        b=WB42H4Gv1yE4KXO0Htj5AJmyJSi/Z63qrdygDDM0EZL+PtcSxgOsGgRoZlxtNURCNb
         DCUSuw2CqBbubr+DyVK5DTilzeJ3UtsP5YXR7xPnYQPsIW7EDiioTPa4zP9bCVCDHiCL
         FUrMdb8Q7HJvrPCjmEBwWq2F9JGHn2fSa17WEwSxm+Gxb4IiCcfpdmsHLMS+p6o7+AU6
         HKhDZsetqC5xHFx+U72ArAq6c1fs0A1IXx47XhgBljJ/xbcdqIEs9xoS96uJUJJ7Vkwd
         IFr+qdjHoFdYR1YdHRoNkLG0XcvcDydQDG3BptXQVUm2wNgxsxgsMUEbDKusC6CDlJuB
         D08Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DPYgBj+7;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id r20si1475702ilj.3.2021.05.18.11.16.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 11:16:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id i6so732772plt.4
        for <clang-built-linux@googlegroups.com>; Tue, 18 May 2021 11:16:36 -0700 (PDT)
X-Received: by 2002:a17:902:c112:b029:f0:d571:b0d2 with SMTP id 18-20020a170902c112b02900f0d571b0d2mr5997817pli.21.1621361795798;
        Tue, 18 May 2021 11:16:35 -0700 (PDT)
Received: from hyeyoo ([183.99.11.150])
        by smtp.gmail.com with ESMTPSA id j189sm12851452pfd.21.2021.05.18.11.16.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 11:16:35 -0700 (PDT)
Date: Wed, 19 May 2021 03:16:29 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Naresh Kamboju <naresh.kamboju@linaro.org>
Subject: Re: [PATCH] mm, slub: Fix support for clang 10
Message-ID: <20210518181629.GA10380@hyeyoo>
References: <20210518181247.GA10062@hyeyoo>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210518181247.GA10062@hyeyoo>
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DPYgBj+7;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::62d
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
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

Nathan, Thank you for suggesting the idea and allowing me to write the patch.

it compiled and booted without problem when compiled with gcc-10.2.0,
clang-10.0.1, clang-11.0.0 with x86_64 default config.

Thanks,
Hyeonggon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518181629.GA10380%40hyeyoo.
