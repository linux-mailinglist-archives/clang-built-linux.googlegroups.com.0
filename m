Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBH7HVX2AKGQEVQIJBOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9F619FD05
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 20:23:29 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id c7sf332506plr.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 11:23:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586197408; cv=pass;
        d=google.com; s=arc-20160816;
        b=LQ1tMXS/Y6jfNLuROJV+8W4S1hCV2Pc989XLslNRaGms5L3LzBGuI7/4TXYRENxI98
         JiLP6XQlsXazCy6/M2IoqKdoQXzer5xlpL9+unXgh4A5UdHkqc06XuV29Yd5cG7QqP0H
         HIqeySYnHQ950AFygZzO877EOJo8WkD2YZYv/Y1+cOI0TTAf99oRv/ai6+5i/zaV2sNh
         aR2mfkHVTKioQpdEzGHrDHS228GcUuGsZ6Rq90s54aIfTRwGydlQvz1BcWnxnDUY3i1C
         1YjRUsXQuMrfNKhBGvfVYobtwHpPpH331cgJ3YrqDJ5XlI2XvgR7CuGKC8FTuyuuspE/
         K8Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FhEPTuwgbWpX8j2mUgTZebpVMsAWQJtDYbNABnjczcE=;
        b=U3D621xfGnQ+0xQLQC+pbJSblLW0m3kSnN6hIUj4/uuxgzisOWuQBDXd8c75UEKR62
         dWu5377XszIToBMKvhDSo2VmyqnEA4n//2j4upOYXyxCKFpgaGRDVPaidxA3y0PlBEjY
         hW7NzV8GlPa/yI+R1fbE5ahKrs79KQa/jjgBZTmFjI3Awo2P/xZBXEExpMDcR/VdaQDs
         z5gOnT/pxlVqs7KfbZpZMjwWZz4YdVJYaQEIx9QrXWNZ1zx2jy0cjKUHZ8AMqEqigOt7
         tXExOsz6g2HQBLmPSwVySZ3dBgSH+bBj8oxw1E2lYJqwOeOObB+KF8DhzJIxiEkHUSBL
         Go7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UPvVgdH8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FhEPTuwgbWpX8j2mUgTZebpVMsAWQJtDYbNABnjczcE=;
        b=Xrwch99NlY9nSJkd95SfDrQzBmycPZqT3vmuW9hWoz4o6rp4hdMciAjg9CtnXmjeT/
         C6AdZ4n2OW9RwwFZy1g4OM5cpn6q0VZDFDGoixFKEK57moG7iViUpg4snI4tYRNqU49o
         JB8K24TvtjJ9YHZtkORuhpFM6Gx2hge0eVnY2h13c44/e4orDkDVcCrK5CDEj9PvReXS
         IYHXksY5uLV1rBwhqgNEtXrspruf2OQCVyWSrF5+RCaxpdP88YihzttccD/J5p4e7+NW
         I40VzzKSwiIf9NlaMGCpPYY4P07zm2CNdoP+WmlMrQH445OAoU+y6kS8HstEs7J8eIbt
         xbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FhEPTuwgbWpX8j2mUgTZebpVMsAWQJtDYbNABnjczcE=;
        b=FJeE3f1fVGWTlvDa+2MZrR9bT6FmKo/xNgQ99V9E3ZTtsTPh5YhdvKqwqVZZEgwlu6
         DBiOVCUGpBZBiIuqzJA/ldzqnnZqxSgb9T5hhew9X3J0Y2PebEfDnI1YS6Bvz90+UYM6
         +4ie5YRTcM9X2NAkBUuUwZwdBs8RNi0Kq1IEqD/KiniNGlzYvrjmULyO71t77tWMIYRc
         toOiSXM2vjC1vyK+BiljKtSXF2WC5tNWstdlIht9cwhb1Fgpk7awxAyMuuYWYNluHsQ7
         WB4hXZTwhwF7+jYJ1Kb06DLucmiF/B4sIArNum3dd2/FZuh6Kcm96bFPZNudajzoYbBY
         6ulg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua72COSidrY+EjpDx+sh5LlvtYpkEawjUcIuiIH0fdzcMPS1sj5
	daLbrumNy0rS0FJQfRoCdl0=
X-Google-Smtp-Source: APiQypIqX4d8D2S8Hbvd3HcoXIzWOOl6ggcyxJzKvOHiCTLkW4fL8LmU4rEiZRnoLlsvhEh5YQCraQ==
X-Received: by 2002:a62:1c08:: with SMTP id c8mr810444pfc.80.1586197407868;
        Mon, 06 Apr 2020 11:23:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:98de:: with SMTP id e30ls188636pfm.0.gmail; Mon, 06 Apr
 2020 11:23:27 -0700 (PDT)
X-Received: by 2002:aa7:8696:: with SMTP id d22mr770937pfo.54.1586197407428;
        Mon, 06 Apr 2020 11:23:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586197407; cv=none;
        d=google.com; s=arc-20160816;
        b=OTh3yy7DjUtAX0vPe89k0lHYDX6WJkGhOhTiPviVlp/AnNWmk9essQv8TiyLO0B5qz
         /DwuBWVmBWnzGHCs866wNFDI4fGHnZuYqUKagPJW5C4GZDRN/GOZcEYB8uaKds3Q76Ha
         Z3qKv/KXHKJUZxbnbjMMKZFJX1HmEw0/5B+isIvNwAX/WalcDHSxiVRiIAB5qiVWKRXX
         y3FH0MVVBVZyvCIxw0OWcMstyFsrkoVwOXLXYLMHQzKLIEeantjkjELDT2BhsvQ0KJVL
         DnMaLO7uWuKk/gZYuvzuBM61NxsQ1OHAfY1ER3+xQ+uSiclXfnztoKW8iFlnirSMJGmV
         PKMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=t1E7i5Ja/N4v3hN9ILxMO9xPBTPnxiRK5Clfelm4oBw=;
        b=XBxKxVREqNC7/Bn94wiY1bs1NlknAXkyvMLfFa7R04kFZWB8a3u7PQw4kLzV7IPkoh
         G/SufAMp8jbu3PyNQEUsgMjCsDaX2N8Fx7AlZVBt413R9qtTRT8XTyK6X6PlEke3QNnQ
         3L0go034TBEerJ3t+dc6VAAfraF8LMOXUQPw2tpVGStBy9saJLRAPAsZ6fewo1LL8MQ4
         WFAnwTHhuNNQiMC7Gbxlw79PsSW3r3Jkj9wLDWzqR3dhXNV3d2n4BnBOGlHyFFJs3LPq
         xbDYuDWV9B1L3C+AaxPWtaF38ZtEPhMQRmij1W4wRpVGl4QcQeixlsGCFE/Z1jEeBQtn
         /rkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UPvVgdH8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id y1si59418pjv.2.2020.04.06.11.23.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 11:23:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t4so135432plq.12
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 11:23:27 -0700 (PDT)
X-Received: by 2002:a17:902:d685:: with SMTP id v5mr22055094ply.256.1586197407139;
        Mon, 06 Apr 2020 11:23:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e184sm12005953pfh.219.2020.04.06.11.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 11:23:26 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:23:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 09/12] arm64: disable SCS for hypervisor code
Message-ID: <202004061123.CE436424@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200406164121.154322-1-samitolvanen@google.com>
 <20200406164121.154322-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200406164121.154322-10-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UPvVgdH8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Apr 06, 2020 at 09:41:18AM -0700, Sami Tolvanen wrote:
> Disable SCS for code that runs at a different exception level by
> adding __noscs to __hyp_text.
> 
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Acked-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm64/include/asm/kvm_hyp.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
> index fe57f60f06a8..875b106c5d98 100644
> --- a/arch/arm64/include/asm/kvm_hyp.h
> +++ b/arch/arm64/include/asm/kvm_hyp.h
> @@ -13,7 +13,7 @@
>  #include <asm/kvm_mmu.h>
>  #include <asm/sysreg.h>
>  
> -#define __hyp_text __section(.hyp.text) notrace
> +#define __hyp_text __section(.hyp.text) notrace __noscs
>  
>  #define read_sysreg_elx(r,nvh,vh)					\
>  	({								\
> -- 
> 2.26.0.292.g33ef6b2f38-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004061123.CE436424%40keescook.
