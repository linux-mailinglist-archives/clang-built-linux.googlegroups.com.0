Return-Path: <clang-built-linux+bncBDV37XP3XYDRB4VN2H5QKGQE5QAGPZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7602327E5D0
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 11:59:15 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id o28sf545705qkm.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 02:59:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601459954; cv=pass;
        d=google.com; s=arc-20160816;
        b=LpcSwjkHLY96M9bbLFrGK8IBqAlnaRVPZLfxl3rp8exFvjJ2IypDLDPZKgM2CfhGGl
         pmHFI23pz5vrAm5HZpG8nwHLxSj9nthDszBTBMTYgyjo5YXMOCyswaPzmP1+WpQ2HcEb
         yGpN0tGeyu9sD1YftgS9G9wBzPDaCfGGQMByakBA7mM1Vb/5BHD+lf0aDRnWaCTqCLtN
         b9jRJZ/vlFbBy8WLhaPtMKTKIG8nO7lOGAKUTFwI0GAbWG/VrPmg/tGCJlQJUJzp2Qn0
         Ce8II5gOch+5ogB5PD8Ui4J2Or+azaV8SHr+hH3ufQEWZGt+xTDKnHSxcenJXheyajWu
         NBPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IIaE5yNKBClVK0Hgm9JxAPbFfmkBN5jOXYoR73hwghc=;
        b=a5gXiPvL4cT+Rdx5h0yvX8Osxhb20KkFAnZ/8DoQvD+Do0m2Hc7RcmIzb1dJN5TdFP
         NR36vFQZK6lltjFVkQT54Jj7iGlVF9ntGSWrM4JJxTwWKYC9fSKJXZviXMTnW6qLqxCI
         /kTupCXkW0Ym4kNQqk7LFYyr3a1YwHA7c+nxxM6J83UUUv/MCEqSL/L0PL+WbVemcQ6g
         ENuYH8i/WCbogBxqy2vwpSa2HWlAQGfIr0HDhvexaAbP1fBZEaUtKbSShPsZeNvIcY8n
         mplXteMMNc9gL7X9giUT8MFVH1DMHb+V73ttdLI6Na5wNgRTK9F4xSsxlELH26OfZP4m
         LsjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IIaE5yNKBClVK0Hgm9JxAPbFfmkBN5jOXYoR73hwghc=;
        b=ZzAmmVvo/dosVnK7OV8MSK/tMHSuHH4+NHEtHbE5u97yR3OO3Rz9iSlDVWQ6wcIuwx
         MiZWKQWGryyPtZVgUN3ul0jK3ubMraCY08ChjYHSJvoGYHN8nHZGNwX5MT426t4OQP9c
         XILaxofaQ3vjvEVgkDgDFO6i2kZu6u7ePK+2ATQpf0NuxIXfCfftwSNkCJ0tcOcn5Wld
         q0HLykO29SihwaBBN5bvEgHqTpdk8XxfW6G8C4nei6waVC4m7G2TiHN368lio688pFRw
         CgsxWv3+mbA8qv4diiXesvFWrhbYOt0dI1IxhdcY6NObHBuvvhSc2u51mHuLiNgktNwP
         SK4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IIaE5yNKBClVK0Hgm9JxAPbFfmkBN5jOXYoR73hwghc=;
        b=KVGc1ZjHxpSuWtI36r7Zv9FPxkffre36HAk1k7h+SAQ76sxK1IIQw3IksxtTY6ox1g
         edvUfA1ACfG9cwGd60rLVsJoJWxcp3FHpkzNgjoMwwaFaxYaKfo+jAqi/UEf3/7iNi2g
         Af+gxJAuUD1VGo5MDki3EvXw9sn/+0t3mA2mYVuiAxJhgqhykHKMuQM3vGd9oB50Qerw
         hqUwzs+vCdmDYuims04IXGL4VAtFuGE0s/gRugf8XvJDmPUIAfg+wcscinq7oDUQVpKW
         uVRww0t+FuAnpmpQKsQNm4CD7+ScGxlanP7BMoR+J3MgPwkhBaoR2oORI0v+wCSuRNUO
         Z5Sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327Ks4HjzQfya9bhsSEbQzRwvpbuMdNIcGHKPhvS1CfPBrfoKfU
	1l5VWkXTEmWoY7V3r3LQ11M=
X-Google-Smtp-Source: ABdhPJySZw+Z4bZQ45zrJ45rn4gUfY20DAwRs6aUHVgho5yP/v7HnmxOEE4LIjsvHtM4Hoqr6gkaEQ==
X-Received: by 2002:a05:620a:13c2:: with SMTP id g2mr1638741qkl.301.1601459954390;
        Wed, 30 Sep 2020 02:59:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:371d:: with SMTP id o29ls393894qtb.6.gmail; Wed, 30 Sep
 2020 02:59:13 -0700 (PDT)
X-Received: by 2002:aed:2a17:: with SMTP id c23mr1420384qtd.338.1601459953909;
        Wed, 30 Sep 2020 02:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601459953; cv=none;
        d=google.com; s=arc-20160816;
        b=Rl0fsUAVd5Vt7ogJkjzd4mXf87MNrKCK62I3obUTPRK/bEuW1L/xtPeIv4evUS4bPL
         0K1O/zcML1SI5px0Vg8xuEn5tGuMkn79Q6udHa+Au77gdvl0S42SEuvsnT38fbWDo9FQ
         u30/p1E8F15x802uoZAyxzeTpaB4zP+wD8SOEX7OaZMR1FiGbDPX1l80eZ7wrHLE+j6z
         t2JhI47g0WAvGGoMfYhhIzOM7ZdilIMltq+nyR/PUsUy9rpX+tN1G8MZXS9pKPTiNKpG
         qq06W6f1KT771yzVRrSoiw5FJhTOr3FOf9GLm31/MmtJ+uwVI1nAGWnBhoWWK9KhYLN+
         qCkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=IbhRizzE9YrxGNpdmNNM+IydyPkOixONYChtGLkGKMg=;
        b=YOuLtx4uS8aJk+zGD3ZQYHMEWpiP+w+W94xX3HEI0bvssWH9wlisxbNAl5MvWgUsil
         22E9QYWNOHKIYcv5HkxqVRFQ1XIrck0woNPv+5vCPyJOnWZHqvjwuW65cBXAlw6BMoC0
         Qe6fc3gucMJIvnM/avnjshFz/o5ibNKldOt5i8R0u7OswnsYCFOh0dGjnps042agdZkE
         NFOsYp4bXf4OE5UmgQ+NU2nf5TmpStYuU3TbfeDxovjl8yj74SZO7orRoInQ8yp4fHZ8
         OEm2cFNTrsEX15ZVxb/Qd4bdTauFcOAYc6lxuzKqDenGsq66ODR7PnHdI32wYjb7sITm
         fTXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a27si70699qtw.4.2020.09.30.02.59.13
        for <clang-built-linux@googlegroups.com>;
        Wed, 30 Sep 2020 02:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47BA9D6E;
	Wed, 30 Sep 2020 02:59:13 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.48.174])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C3E9A3F70D;
	Wed, 30 Sep 2020 02:59:09 -0700 (PDT)
Date: Wed, 30 Sep 2020 10:58:50 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v4 09/29] arm64: disable recordmcount with
 DYNAMIC_FTRACE_WITH_REGS
Message-ID: <20200930095850.GA68612@C02TD0UTHF1T.local>
References: <20200929214631.3516445-1-samitolvanen@google.com>
 <20200929214631.3516445-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929214631.3516445-10-samitolvanen@google.com>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

Hi Sami,

On Tue, Sep 29, 2020 at 02:46:11PM -0700, Sami Tolvanen wrote:
> Select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY to disable
> recordmcount when DYNAMIC_FTRACE_WITH_REGS is selected.

Could you please add an explanation as to /why/ this is necessary in the
commit message? I couldn't figure this out form the commit message
alone, and reading the cover letter also didn't help.

If the minimum required GCC version supports patchable-function-entry
I'd be happy to make that a requirement for dynamic ftrace on arm64, as
then we'd only need to support one mechanism, and can get rid of some
redundant code. We already default to it when present anyhow.

> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 6d232837cbee..ad522b021f35 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -155,6 +155,8 @@ config ARM64
>  	select HAVE_DYNAMIC_FTRACE
>  	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
>  		if $(cc-option,-fpatchable-function-entry=2)
> +	select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY \
> +		if DYNAMIC_FTRACE_WITH_REGS

This doesn't look quite right to me. Presumably we shouldn't allow
DYNAMIC_FTRACE_WITH_REGS to be selected if HAVE_DYNAMIC_FTRACE_WITH_REGS
isn't.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930095850.GA68612%40C02TD0UTHF1T.local.
