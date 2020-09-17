Return-Path: <clang-built-linux+bncBCUYL3XMREKRBN5SR75QKGQENFVV6PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E0726E78E
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 23:46:33 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id f185sf3419122ybf.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 14:46:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600379192; cv=pass;
        d=google.com; s=arc-20160816;
        b=pXXV2BmOTkHZ5KN4YYw3JJT1j0FKepN1+4ADJBrzemOPaHvddy981Fzg7ZlWoD+50M
         kN68GGsTIVmj8k6AsRuI8zO2jEF7auM7/NFlqwrIX8O0DgWDLqhZ2qdpF2mnrxGMjNs8
         KhCoW1i9qFyJBAuGVq5NRjeojqmFcJazacNYpjoawLAo5Y4o7qeev3eNCfXxS3U/1e8c
         /b66DKUPseRRaqjGhjvgf1D88IH2pH2GovHFrkjL6a19POosxxmQ4Gc0GMgkHVQ5k6Wt
         dGR5NTGg68gFjYBN9Uk56ZhOOP35aMXYmzhGdsiXvaFD+Hwjw7DWrxxsTKCSneQa2ERn
         zmIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=rXvaBetGOep1AfGh9rzUH/wvKd9CUh63i1VoUZ3VC3A=;
        b=Prm4+Zf45OKKsryU1qV03vt34/MgICVprM2DyL6XH85hAAr7Lfpl6LaUb8i+g5Kpw6
         zuKnBO/D1+HIZjSC4KNAOr4jbQk+rk3YSbxzk8E+6rS3cDVZv+6OvwUOuBXMU/gv7FBm
         xQWBh4o3LBmKTmEPy8YGcfB6Zg1hOnT+ni0W0oZyzHzmSI7D9SFeyJWnLpdXF3JIj3wM
         uRwXE5eGxe5SCH5cttzJBMPSsaYDICN4B0gec+mBclrw+CKMbco7T5qPRk0clX5eGCHL
         qDsnZlsa2DZerOed9NUVOCLLEnxUlQy79h8yDN2kUTKJ+NwyGoR525tGpYsK110ICUD7
         KMIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of mgross@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=mgross@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rXvaBetGOep1AfGh9rzUH/wvKd9CUh63i1VoUZ3VC3A=;
        b=h87SkrD8qbzZrGOz6WEZgBnyefvRK3+w+IaMe9mUN9leY50WQmz3wMJx4r6J3yK+Z6
         e4rHd0diwkG0agXLAq4odr3uzi9VlHwg8kFammTRRggCQVNFhdSS+8+lxSMCp+cY55cw
         chil6ZzCsTo8WCw8lp9/af1+PC97MdEY4Lp0VgVRwXrYsjz4707R4mED4RmsHu7vlLWJ
         w3WWb3mh7Vvu0FObrJSeHeR9cOjLNY8V8ApYSTRiuRBNx8T2g4hivD+j794RXUKl71tz
         M3c3YbtbamI5KUh9BoYOvTIQZ2o8NUjK4ruWDHmrWgxO3s5qA9qpuaKvUywprDM9awF4
         oh/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rXvaBetGOep1AfGh9rzUH/wvKd9CUh63i1VoUZ3VC3A=;
        b=TZi0pzGDllQQk/xRU0fAB+w/4OBnp2vJ9Dv+6td36XLxsDmu1s4IFUIAdcLdSy9ssG
         Gr/Kv4dzvzPkp2zMl9swKA9fgY+ggpnAhY6w+zUz3TdjhnpA2hevhyP56sNzURip5fGr
         cK3XX+E+8Veyg+oJSbc1+zHzliJ10qmHCYwAzUSPvhYgUNFf0KIXMHnlbwoYLqEt9HX2
         GHOjpT9xfTKTin/me2byH7LHgymVdFRlKR2nw02IyGc3kE8ANbPhU5VeNyjrAx4DHoeV
         sfSfxskNYLeKavnaoZ8gnt6KmYcEbFoD8HNy3lrABdMW+i1U21g9M5oEXH8RvA7TALoT
         USgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/iathVSyC+B1agGLVZc8uUQQZHEhofzsN2RhI4cY2xUlSCRcr
	iBgUQCnL7qn4DRJnxff1Ors=
X-Google-Smtp-Source: ABdhPJxXqK5cXW/4IY5SZAScraiQxxlFcQEEmFY2lMagqiEUk4Jrylpgqf+7QIL3HBtKdL3yq7aphQ==
X-Received: by 2002:a25:2e0c:: with SMTP id u12mr37735657ybu.410.1600379192115;
        Thu, 17 Sep 2020 14:46:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cd89:: with SMTP id d131ls1561719ybf.9.gmail; Thu, 17
 Sep 2020 14:46:31 -0700 (PDT)
X-Received: by 2002:a25:a549:: with SMTP id h67mr5520541ybi.320.1600379191491;
        Thu, 17 Sep 2020 14:46:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600379191; cv=none;
        d=google.com; s=arc-20160816;
        b=qHNqEcwTYfjKQbfIdO9oWyASNW92NHGwhYq1X2jOT1GB2L66hCHUBTTFPNbLrqL57o
         woq7yyRQESZ7Arx1auvFdW/BJEuzn3TXxEGZ+16Jyumm8ejqr3EV8oCkoYbYcwCwNddY
         WTHoXk6Bj0MEWAbl4yj01MTLIbKvd1dEgHhleiD2x3iYX/ghdMC8tOaNwppbXbS9TNZW
         nEm0VNZDkokyGEQ+gJW1zJ8SeKybehUUfkQ6m4CIMm3X9ckFiIVtoL32fGMQZIxa4hcq
         mU4ZwW3ZE6Sl0/0+Jmvw4QauzHLpWjaPID4vKMvrWoXT0tDXrE9Q8SU+TkQWEi5+BPwz
         Z/yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=UZqGQBYVRD767ilxBJt0rV7C3nM/wCpdP2bWUPT5Uvs=;
        b=U9UB+JWlBWSd/SiqA/sOY+BYfjbt0JsC14MVK7O6FHbaDjKbMQLiTMQcQ6KphttmyM
         jB9l4kJuKQw1IILQ2HMoSul/AULX9r7D3GAxKru8DRLMatVdUgLLl9H2EOB/dMDmXHW7
         xTy17l1Oar+nBewHYpdIdAszqnmu2181wKyVazzT7DCVX3gpm3wjyr3G4qdtIOx84BM5
         O0Ie84L7lFqgSuLxpHQfaWGj75QGEi9oJKHbgmd8IFtmx0G3jkvIUaFTTfbCpxwq8mFe
         V2oFttADXm+aX7Ctg/FOV4FjfIzlm1DOYjGcykuKKTHCKZS7YpOiy7tJcHOXjfcC5WDK
         2EsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of mgross@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=mgross@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id t12si82390ybp.2.2020.09.17.14.46.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 14:46:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of mgross@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: Ed1i0Hg2UR8ThFJOnfUBogTkxRIHuNc/wgBSPDihIxjrQgqHG9scrSNknSMQtuhZO35/BaUiWv
 4f52Qx+Q6e6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="139804389"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; 
   d="scan'208";a="139804389"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 14:46:28 -0700
IronPort-SDR: 4v506Jv4WNG8inJA6c0dcYElPBXLhmBjERs77eC/TvL6SfRnAMW2nK5nbrBfR3DgUSYstFPc5M
 DckGfjp+fSsA==
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; 
   d="scan'208";a="344508817"
Received: from smtp.ostc.intel.com ([10.54.29.231])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 14:46:28 -0700
Received: from localhost (mtg-dev.jf.intel.com [10.54.74.10])
	by smtp.ostc.intel.com (Postfix) with ESMTP id 3FC1A6369;
	Thu, 17 Sep 2020 14:46:28 -0700 (PDT)
Date: Thu, 17 Sep 2020 14:46:28 -0700
From: mark gross <mgross@linux.intel.com>
To: trix@redhat.com
Cc: ibm-acpi@hmh.eng.br, dvhart@infradead.org, andy@infradead.org,
	natechancellor@gmail.com, ndesaulniers@google.com,
	len.brown@intel.com, ibm-acpi-devel@lists.sourceforge.net,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] platform/x86: thinkpad_acpi: initialize tp_nvram_state
 variable
Message-ID: <20200917214628.GC29136@mtg-dev.jf.intel.com>
Reply-To: mgross@linux.intel.com
References: <20200913190203.22238-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200913190203.22238-1-trix@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: mgross@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of mgross@linux.intel.com
 designates 192.55.52.151 as permitted sender) smtp.mailfrom=mgross@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Acked-by: mark gross <mgross@linux.intel.com>

--mark


On Sun, Sep 13, 2020 at 12:02:03PM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis flags this represenative problem
> thinkpad_acpi.c:2523:7: warning: Branch condition evaluates
>   to a garbage value
>                 if (!oldn->mute ||
>                     ^~~~~~~~~~~
> 
> In hotkey_kthread() mute is conditionally set by hotkey_read_nvram()
> but unconditionally checked by hotkey_compare_and_issue_event().
> So the tp_nvram_state variable s[2] needs to be initialized.
> 
> Fixes: 01e88f25985d ("ACPI: thinkpad-acpi: add CMOS NVRAM polling for hot keys (v9)")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/platform/x86/thinkpad_acpi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 47925c319d7b..24da8b6872f2 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -2573,7 +2573,7 @@ static void hotkey_compare_and_issue_event(struct tp_nvram_state *oldn,
>   */
>  static int hotkey_kthread(void *data)
>  {
> -	struct tp_nvram_state s[2];
> +	struct tp_nvram_state s[2] = { 0 };
>  	u32 poll_mask, event_mask;
>  	unsigned int si, so;
>  	unsigned long t;
> -- 
> 2.18.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917214628.GC29136%40mtg-dev.jf.intel.com.
