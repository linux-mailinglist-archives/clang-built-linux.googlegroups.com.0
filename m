Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBEWB2PZQKGQEE3XY24Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6083118D2D7
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 16:26:10 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id p2sf2789213wrw.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 08:26:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584717970; cv=pass;
        d=google.com; s=arc-20160816;
        b=bj57GMAGqaO2+V2aGaRUkUSI2AciyLbSu05TH11NQGgVDP6dyRaPI/nOKYoxiO268R
         0uyIhgm7mdvHDkkrjNoRwrDp534QfmagosyCABDHJaVPPdeHeR9ezdNZsDeB07vRSWix
         /fitIkkXBDorrLh0WemwMa/CPNnbgdaC2EyFrUMGa8OGD2wEOPm+EmD9dPBIcJWOtI8k
         ZrbXXzg0x1TK7TYp8+p4R7PHVLHYz1eXEYNVf/1snh20WQMyt1fsuVYSBUSKxpqW1NR2
         rqe7B/6eWazA1GJj5mLmavyfqIp7439p5inM2Jtbd/pRNWlVtpgVdHmVODLaGeAIPA4S
         SGQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=IQ/dvfGK7MS1GrOjctENotMqwvn7Dsph7m8GbwW0Vqo=;
        b=vRSIPBXs8tUcEmhkleKQzShMy/iSglEck3VO5f7lqjClRjWog7OKLsrnnDy3z4UNhb
         UZeHBd4T8li+tmJ+zpcv7336HjtRNdAH5jZwHCbr1MOqdrCMU+U6izyT+vbiR/lz+B9g
         j7L6oQGHoHE4KE9T8DYTqKmnPyK4iQB44c/DA/xoEZBqmvk21HCXIqR00ugVaGj64Eru
         NXgPlzZLh23GkNg5ekUTC3J0aACQ9K6z1iQUu3NvWcgKjVetnOQhv5mN3GGSBXXdUlZa
         epf32C+U01tiijndnOS8wcBMeeA1QsidmwN+1WE5ADkIkgzZdQzSOaxM9ldJyvcZYIWT
         cfGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IQ/dvfGK7MS1GrOjctENotMqwvn7Dsph7m8GbwW0Vqo=;
        b=COx3ZrNLrwDONFBQ7lM/y7L4R/kte8fZCexBPiH/HpERWwsOmJUsuezbl+g2FzNW8L
         CVJNlbP3bXvZh2LfZfZfBYKQVn51xb2vf2HCcgv2WAH98tMXEozjFvWhCUy9ETJcRqol
         FI2BWfozTojVFqe4F+6ldCmzyZlzEmuoyO/Nit/LY3MVktdaiiKU8RMSxm1HzmWcjm6A
         XZ7gbor96YuY1HFlVLE7XwQ+vFlwjf+v+kstw6K6ZZJ963+hTEMIU2JjGboddWkpFc1W
         WA1v6CNHaFLCQJUm19i5271nXIBbe2x0ouAH8DNiCxczjgLcDHdCPXMgG7SwgAZd2Ubt
         j8Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IQ/dvfGK7MS1GrOjctENotMqwvn7Dsph7m8GbwW0Vqo=;
        b=KLiAzHxe6ipPa85eLx5ZRFAPkPHGWEBgT/0pZ2BTjr2vY2lFAQGHNcsarAFWScHjrW
         FIJFYe6pX/HCVEk823CI2ccNupKDY8/kC9Im15RtHi3xgBWZjZ61L+1qrN/OemnFYIix
         +7vW3f4RF0nRxKH7pUyyKOzhvKJJbIOe6RCKv4TOtIj+ykRHtb7HqdcwIOxPVwS9QNjt
         WpUjlwkGy6Do/iGW97ZycfSoXxp5g90HEKadXWkPaSlwJNaSxAPyGHMrD1bJC3OuLprS
         rMrmyL/EzcZxRy6LMvFpMiRhzT+z65dSvbEEizwggIe+vmQBbWjDbsrkvtsBihcL3YPR
         qcVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0ISNUphRFGQrmj3pM7G5MkvQLh0XX6IDKGBulSspFNGy0e8t7p
	wvmEzebKYz+FDz6bb+G5x1Y=
X-Google-Smtp-Source: ADFU+vtEd3XPz3WdWoDwrVqFZxR2zeKJHLsLc/d/HzepUBbDm3jFW0FjEr3YIHVTdGKaFP159n50JA==
X-Received: by 2002:a05:600c:22c6:: with SMTP id 6mr11346247wmg.161.1584717970091;
        Fri, 20 Mar 2020 08:26:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls3155433wmc.0.gmail; Fri, 20 Mar
 2020 08:26:09 -0700 (PDT)
X-Received: by 2002:a1c:48c1:: with SMTP id v184mr10814144wma.20.1584717969238;
        Fri, 20 Mar 2020 08:26:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584717969; cv=none;
        d=google.com; s=arc-20160816;
        b=w8dO4tjyPHNY5lyawwOsMsgXlAIZ5rNhSk27l07iH6vbCPjP5MmVLnPa3xX1s0sxtT
         F1NUMjBorVLJ7Cb8peW2dJPDWSDGbosp1D2W970d4BR3ZAPP0gyGCuSLzFKPAOSM4eCU
         sSAS6/MsWp0/ZRg2kMkToGZxihRnUFT3dVn0unCFp2cf/X4MEcT3/7cxRz4AjG4deCbB
         6Ms2rHuhBgcr4QXksoVWwyfK/u6jZk9FMeygivKQmzXmct7Jb9nG01Ow3F0vm+DtITbV
         43LDUUi/N6zJSOckq7q2ekIqRmI/8basU5dlQii7etnNHE+gnQltW2FzNo1P4pdA3I3Q
         esqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=OlyxBMLT/Ccuh1qh4nQYz/aqNsKj+lK6RSaD6ubkCeI=;
        b=qQ+WKQokS5EmLZJWG7GPl+yE5Ka6k4lVamL7ric+voXjNennuvv/633KuSS8GOq1yy
         GLsv5wsZgYY0Y2A098OJ1sg1TH/a+bk0FuixKq0J79lkhZfsQhcTEImNJI2ZHHaSZQrY
         igOj3hbuIbeajf8XJXxv/9gEKpBquTcerfoWY0d0RYpDjiQRt2AoVZdy19f04E6KDwOw
         rsYUCL11xw2jeRfS9BQwTlpBdMthzkoYKtx9VSgD15RbVgOg+xCuN+iw+AW9uRV0Sds+
         awOPoV1ePAIklvbofd7OW5ER3+0x+VY5On/urqPMAb1mreGUE2yDdMI7yNu62Ir1m0dR
         5j2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id q205si325666wme.4.2020.03.20.08.26.09
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 08:26:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 72C421FB;
	Fri, 20 Mar 2020 08:26:08 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6226F3F792;
	Fri, 20 Mar 2020 08:26:05 -0700 (PDT)
Date: Fri, 20 Mar 2020 15:26:02 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org, x86@kernel.org,
	Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH v5 18/26] arm64: vdso32: Code clean up
Message-ID: <20200320152602.GA7448@mbp>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
 <20200320145351.32292-19-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200320145351.32292-19-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Fri, Mar 20, 2020 at 02:53:43PM +0000, Vincenzo Frascino wrote:
> The compat vdso library had some checks that are not anymore relevant.
> 
> Remove the unused code from the compat vDSO library.
> 
> Note: This patch is preparatory for a future one that will introduce
> asm/vdso/processor.h on arm64.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Link: https://lore.kernel.org/lkml/20200317122220.30393-19-vincenzo.frascino@arm.com

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320152602.GA7448%40mbp.
