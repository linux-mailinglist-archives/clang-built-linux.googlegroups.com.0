Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB4UV6CCAMGQEIQN2U4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5F537CC9D
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 19:05:55 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id y47-20020ab048f20000b02901f8bb2a8695sf3252750uac.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 10:05:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620839154; cv=pass;
        d=google.com; s=arc-20160816;
        b=BhTGpKueofpQjrDAEFLr0hLxGqdMlxGGVozSlb3z5cQqzgaTy8kvKfJx61jUyhibwJ
         eizKzOy+u95uqOFg/spYzXXwabJlXmnhHCryVO0byK/IkuDV/e6d/ssrJBPPbmMPh8bx
         pksuacCiTcmNIOpC2+Rcsv+5171HjbYqpfyBADHC8h448sffjkFnsqZs2yNk+C5t4DSf
         bf6jXKYbvspnp6imlBPIwQ8isq+CO3s+kyi+4VyPWGe2bXfoFg+4w5xRy2v4u3sZPPdj
         wWY4NhsC8KB549HsOBPRpCoO949eYJCGlBkqU9eUfNbGAe6I6JvSbAsKvi3lb751gmCJ
         Mynw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rV+qA973Pct3NplHUsYKTxqAWGmv1HFlSUIT2nSZNnQ=;
        b=AC47QVH61LPSNz7xy/dUKIm+oBbizrN51qli0Qu6yiwXPBUlVemVmxi0/L1mzzDoHf
         K17g4NsypyigXxpDOBkD3EYaThPrSJJj/x+4MYM7JnLFMTycjAkeQlUpzGwlwXFYmURJ
         GFMqPywll7T/GaDpOUVpKzrJSNhB/UrYOdNF7D8rFS3AfyrF1jCGb/7p6tR+3AKngz2m
         v2+l3+nyQd+necf7CTHyLB772PXDnwKxiGUwJnw3hFNrPEWRomW9uiR4+Qs+qMfZngnz
         l/zZTK6LeSnO9GGd8O2K6o2FI43aAlCIQuEF2Wpa+ZySZwtOpJgwgRqXmm4Vn0HRTk19
         66vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XcSm6+p3;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rV+qA973Pct3NplHUsYKTxqAWGmv1HFlSUIT2nSZNnQ=;
        b=pC2jescS9RUHuXtDRF7D3Crn2O6nvaP897LRhMx587ItPSGwWiisvvy2AFLt/6acG+
         H/HbZbdBL5G73ADZkQRxTjuonRPm7hLwJ2OPMLBxXy0A6+7+ogX/CfStoTL0eRLkiZDx
         Cl1nqwrA3NJvfU0Fwa55qvVXFGqr6gelp5ffows2T9qMZ69fNCSnnyXaTMTAGNEASvwy
         yXFyojSRCHTwUVoRRTcq+HcNA4aUTziJht8wibBym5W5bHFtFVC2NbuvIn7qNcn7jKP8
         6BWEPT4tTxhcz8d7Jp3bDObDm3C/CoejMCwA6JttnMOGY8K6M+j2aJR7xrDRUzyP38zy
         cTeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rV+qA973Pct3NplHUsYKTxqAWGmv1HFlSUIT2nSZNnQ=;
        b=VM1jZ5WdCU7ILk6B9kS7MwPlDqt35dgyjAgamAOfIASWqQykQlqePxUXrqTvarRKMO
         hWhBHxcmlCrX89lR7zwI/KtX2Z/qNtnlmvO2NbfEuc8IrtruijBcn6hyLPX2CMSpRL2e
         4jGo5bnowGyNPH3rUY+TCUQ+KzhEam/OlUOdZ2rHTJ3KJJ3EkPHVR68+1y66c9Gy8KOg
         oBUjWWTcigrS5RNw1GRsVREWTDCy7sWLpnFPjP+tcLMVWSmMpquAoEaP7ueJMSrt4CnH
         vtSzW9/L4CvuQJxAbFs3e9cBRQ8GiGVDTO/6+RxyviiYF8feI9/kfm1nJOwCSdC+SAn+
         eXBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309cVLtcRk5PxdgqanfZbKnk0lohgifvSG+3XUVnUHctJd89ICw
	BtanW18bYGfGKV/5e4WkejE=
X-Google-Smtp-Source: ABdhPJxSuu5juBePtYLXIPw3GoMOeFp1/J6EzsXMkf63Hk6E+iqUYVHTiopOvBOWsl0dVfN2jiKH+A==
X-Received: by 2002:a1f:280e:: with SMTP id o14mr16228056vko.19.1620839154660;
        Wed, 12 May 2021 10:05:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f301:: with SMTP id p1ls761653vsf.10.gmail; Wed, 12 May
 2021 10:05:54 -0700 (PDT)
X-Received: by 2002:a67:f3c1:: with SMTP id j1mr32704640vsn.25.1620839154115;
        Wed, 12 May 2021 10:05:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620839154; cv=none;
        d=google.com; s=arc-20160816;
        b=aiyXAU+SgEtob7WBR8AVwdNnCXyv2B1ExuPXHx+Q6EvAuuRrjb/91q4OVEw+9nZo7m
         tOqcblneLSqPKKgCETsFV8Z35fJRJlkemX0mBtb4VFXLrL1eFKYFV6rw3c0JqoFTdW5G
         u0klmbKPhaZ3At1eJx/HDwsaQBzrtyvGBL6lcogeHJ6ztsc6Ihf7WZur+tOxh+NZoEaz
         NnDFq6bkgVBxSySTep71tILJEVbAWMPDPyZ95eXK2QeWwWckOIOOTbZYnL8Kqk5X9Ikd
         rhSQZFsnIpPKFQ/TDQlW0vY/4ad+jv00MzfThQk8VpZ9jwL1olVa51ubIe4hLPcqxv2k
         VLGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CdDKFbNX679YA9+XZd+rjSBnwsOiWrXGT4AwnoKSCCk=;
        b=a5UIoJRLRafa2ZubFbU8Xd22Yk/OGZ0jf5HfccUiJGZIJQScF6GvSJDa+N4BbUDuZx
         4awhrDbTbau9yWS0COLnFWGD+SlX0lT37jKgN/dMtbdaqP0zBMouFP+SWHzOrel8ORIH
         P6NyOZWJzC0JywUgWX4ryyb6An8oYqwAHZHk/ZCnvK3GLPrpo9iNGijr8JXL1MnQtStH
         IUaIWwyTcMi6jyJ8+hQywyU1ONK6rTUUKkGAcwTV6kbobxKpjvAXgv6DTODJwo0eLN71
         z26QJ4oLhIffevkQ84SVO7VBCsQrnQFiUPJMwvYIs3nceU7/12LfV3b3Shq2G0f5m242
         W6Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XcSm6+p3;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a1si41510uaq.0.2021.05.12.10.05.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 10:05:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 43602613BE;
	Wed, 12 May 2021 17:05:52 +0000 (UTC)
From: Mark Brown <broonie@kernel.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@codeaurora.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Yang Li <yang.lee@linux.alibaba.com>,
	clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>,
	alsa-devel@alsa-project.org
Subject: Re: [PATCH] Revert "ASoC: q6dsp: q6afe: remove unneeded dead-store initialization"
Date: Wed, 12 May 2021 18:04:46 +0100
Message-Id: <162083892845.44734.12776647391535930277.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210511190306.2418917-1-nathan@kernel.org>
References: <20210511190306.2418917-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XcSm6+p3;       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, 11 May 2021 12:03:06 -0700, Nathan Chancellor wrote:
> This reverts commit 5f1b95d08de712327e452d082a50fded435ec884.
> 
> The warnings that commit 5f1b95d08de7 ("ASoC: q6dsp: q6afe: remove
> unneeded dead-store initialization") was trying to fix were already
> fixed in commit 12900bacb4f3 ("ASoC: qcom: q6afe: remove useless
> assignments"). With both commits in the tree, port_id is uninitialized,
> as pointed out by clang:
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] Revert "ASoC: q6dsp: q6afe: remove unneeded dead-store initialization"
      commit: 9b7493468fa7eeef2e86b8c646c0535c00eed3e2

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162083892845.44734.12776647391535930277.b4-ty%40kernel.org.
