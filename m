Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIV7QT7QKGQEYLWEH4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBF62E0266
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 23:20:20 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id mz17sf194829pjb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 14:20:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608589219; cv=pass;
        d=google.com; s=arc-20160816;
        b=lRRJuEji8egMlH9uHfM2E4S0LINoOqh+PNMQJuGRMPcjNaVKN3dmeoY2E7ZQGmWK4X
         RIC1HT3cbMu255eZt+WTed9KqGr8/ysZgxDapqqJyKQPkOHxmc8pUu3VUUFMGCifIvWQ
         h5YwxTRCeoeRb7Ak5hOeZyvteG/rmh6SoMTQA9uNKOUSMJPzlwsZPkvu3oxLz8qrJQjN
         klPQbEp2fD4wI29zhOoRGunD5g+Wnm7CrMTQof12/UDqQn13Pk1ZCI9WUzszXGjyAJ89
         O0I38nIAti1V/9iH3Xm2IgaQp3O9ygdjy9b8Dq+wI4vwrh75yU5aUM5SQ+RQkfByvC5g
         chng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=r50/9YfCWLa3WjZ6AwkMiPsot57RcY6KkZl2keO0iVY=;
        b=s51ZX1qD9aF9/mlBxfad8OStI5BFLMLCDDJNIe1zlIrnem+HpD1SVv/jmPB+3cIVUH
         ufjUjMTIKx/PPUsFDpXJDcrGLISmDzTkgKO8tWYY7ylyiyLODsY30v14Ga/S7RCB02N4
         MI36ZCxsRPRxibJuS1qxUAlNIJZd4mcsuIjHLRGauEiAoSDFceEPG1aFnmF/HcAyreOo
         t0evgXl25nOOBcifL/IreWyo52dAWUnrty2WHSc3lwZUTd3ByFcSBJbZRSlmLRu/OEZ/
         887gXnkEHz2qQgfpcpoEX13nn8DWaCw8VS66fMmwW3MQ+76rSBCV2JbUrjztPE6VQor8
         v8pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gftRiDT3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r50/9YfCWLa3WjZ6AwkMiPsot57RcY6KkZl2keO0iVY=;
        b=GpyGUQmCMY7YWx5Hyamj1i6UJM4OtkArWQYhfoV4XgnFJnRuUHpS5FWRco2G2e0LOM
         YoFAEwmAv8CevCIUwE+eonmoFGk9AcVbOp+ODm8Fl9H5KP0Zerpgmk6fI/cBW32TqisO
         cMglIK7/MEe1HaXzvTr4XY+mmBXhf/yv9wJfTSRqTYDZubKpqxG7qj96yX4obAjCps7d
         Alpb9KaB2Cchr51vyvRg18ulYSkj/CBD+83kEPwIjmXpezQiQkvpGXdwyDEO4thXuNKf
         nmt4v3u0L9Erg4bSVMLbmXPdDzyY4EbXyQxVdvzYXBt2BjD+Fgc67ehmyIK2/PNwwS+d
         xxjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r50/9YfCWLa3WjZ6AwkMiPsot57RcY6KkZl2keO0iVY=;
        b=raicjGS4LYBNvJVU6/iaDEvNKlxH+eLw5Jfw743V6lvEpTqcDO4QcYD2QFZhbBgnNP
         LUyUTwO3EVpJfTLRfxd7gMJY+1dqVamPj2+I2Cw8lqnBx3N+o8w9y6BWcqrlB869ZzAP
         zRob9oHCYoPvqwodwP+DwXDAFKdap2EZlquOBrQDlLfYzq2Zh9NEjr5AqhbsMnsju4bM
         nEtw8AoveEqvbXzT/z56fiZTO4duzDZ9JZXAGGKBWcvxttz3n+/VRMlJB1gRiciah0oC
         qul3433ELKOZD5Gn0Npp7PSMjwWMti6Jg0mxxOuHwFJrdzZrDLlmleI3pzLeEssMBZG4
         cQ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r50/9YfCWLa3WjZ6AwkMiPsot57RcY6KkZl2keO0iVY=;
        b=mQwjeHQ/hpRnasTWvbbfVCPJPbuSgGsSSyGSBmnFFLzYq88TX9MMWMjLLSaMSRoWij
         599qw7uDWPuOZB/fyYNCmiezCYUYnhOttIuzSgeVGK4czhI778meOQtPdyy+lpuPb/3A
         kSH1cKrS8XYlCwIvvY+/e2+yMDbES/fJiiQSFh8A0AxB65Yav0pS9N8+IiulNtBfzqZo
         DhEjo9WjkVn/ql1Fg/s5Lw2A16UaFkdpLkGdGyG1Gki8aDTrN8UZX987kBCDNrWWRY1x
         rUu04FVFu0dl7kib+Xr+DcQu5H2vQ62xiCzhbTWhfOubMYyJWrZYpxE0AEVj92BlirAU
         zPcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gU8TYi9C3wf7ETi6WeEp7HeK+wX0hX7SILjNZ5kCG+mKIY3Xb
	KamVyAFU8nfQ4jCaPiBP0Rk=
X-Google-Smtp-Source: ABdhPJzjjZyizkwqckiWi5hBYsHWO6g8rZn6EgZkTMDccsTF0FZA0kys66V8kAZwhHkvodloztQkSw==
X-Received: by 2002:a62:3503:0:b029:1aa:6f15:b9fe with SMTP id c3-20020a6235030000b02901aa6f15b9femr16878029pfa.65.1608589218527;
        Mon, 21 Dec 2020 14:20:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ac0b:: with SMTP id o11ls9771654pjq.3.gmail; Mon, 21
 Dec 2020 14:20:17 -0800 (PST)
X-Received: by 2002:a17:90a:d90e:: with SMTP id c14mr18902346pjv.85.1608589217899;
        Mon, 21 Dec 2020 14:20:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608589217; cv=none;
        d=google.com; s=arc-20160816;
        b=0NS8RRUPWpJ2FceGtCV8EuztCyiq3hMOQDk/DAViMEezbrsmB0qPSc1sI2U25MnnFm
         LMGZRkXI/ZNYeiUPilPl+s10QRgN52+ag3VSrjapOiNbjwsrRvn2DlHmulzVIgM+Os9G
         R7sr+mgWL8UYO2VHxnmYrgw7uCJC0KBRgte6ytGogjAQFEwYzG3lQdUOWscUslAnbOHv
         H1L6bk4lW7HkkqV5OEXJIJZvqJn3ZwkRdgOzXQcAVr23TlWHt8HoZLXZzCT4ckEZcLbA
         FLvKJE5cq28DYrZxfNQVTnIDmTns07qy+U1I43K9kTxl1p2ImKdab42Mto5ZKYY+MOqb
         C3rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=apJ8Ig/EiKTD7cW9gZsBxbwVR+J1NM8sWspkdwWpVME=;
        b=cVJFbY55DKFMRjD58GuK4ntnwFwpQqNbIUuXKSzGpSLEgtY5bDUBQG0StGrKCNIa+w
         zPDe7L7pCKH8gG+4q1dRI309kbmZ/94bqxaEV0BSlp3rbQ6qWvRxD8QLVStjiVEGCji7
         vDwHg9yvfpfzAC36RRf6KDwIl83QH+4yih3h5NNzBuMgEcJ3k/gF6la/tSq5JWAEEN5w
         lcMBmkWhPd/OMM/4BR8FU8l+daWFWB9Ap1NEcVvddvaFfl3veKo5V1Vfcl1OsHt1q3lb
         6xc3b5p0C+VbaC3hCDn08b85tGGh9PsqEOwrrM/8n1slX5BZM+TwndtXl2GYDHSZ8ksY
         r1IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gftRiDT3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com. [2607:f8b0:4864:20::72d])
        by gmr-mx.google.com with ESMTPS id j22si232078pgn.5.2020.12.21.14.20.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 14:20:17 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) client-ip=2607:f8b0:4864:20::72d;
Received: by mail-qk1-x72d.google.com with SMTP id 19so10294006qkm.8
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 14:20:17 -0800 (PST)
X-Received: by 2002:a37:7143:: with SMTP id m64mr19249783qkc.280.1608589217535;
        Mon, 21 Dec 2020 14:20:17 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id r127sm12014204qkf.75.2020.12.21.14.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 14:20:16 -0800 (PST)
Date: Mon, 21 Dec 2020 15:20:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
	Len Brown <lenb@kernel.org>,
	"Rafael J . Wysocki" <rjw@rjwysocki.net>,
	Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
	Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] cpufreq: intel_pstate: remove obsolete functions
Message-ID: <20201221222015.GA3389117@ubuntu-m3-large-x86>
References: <20201221051320.18391-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201221051320.18391-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gftRiDT3;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Dec 21, 2020 at 06:13:20AM +0100, Lukas Bulwahn wrote:
> percent_fp() was used in intel_pstate_pid_reset(), which was removed in
> commit 9d0ef7af1f2d ("cpufreq: intel_pstate: Do not use PID-based P-state
> selection") and hence, percent_fp() is unused since then.
> 
> percent_ext_fp() was last used in intel_pstate_update_perf_limits(), which
> was refactored in commit 1a4fe38add8b ("cpufreq: intel_pstate: Remove
> max/min fractions to limit performance"), and hence, percent_ext_fp() is
> unused since then.
> 
> make CC=clang W=1 points us those unused functions:
> 
> drivers/cpufreq/intel_pstate.c:79:23: warning: unused function 'percent_fp' [-Wunused-function]
> static inline int32_t percent_fp(int percent)
>                       ^
> 
> drivers/cpufreq/intel_pstate.c:94:23: warning: unused function 'percent_ext_fp' [-Wunused-function]
> static inline int32_t percent_ext_fp(int percent)
>                       ^
> 
> Remove those obsolete functions.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on current master and next-20201221
> 
> Srinivas, Len, Rafael, Viresh, please pick this minor non-urgent cleanup patch.
> 
>  drivers/cpufreq/intel_pstate.c | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
> index 2a4db856222f..0e35dd247986 100644
> --- a/drivers/cpufreq/intel_pstate.c
> +++ b/drivers/cpufreq/intel_pstate.c
> @@ -76,11 +76,6 @@ static inline int ceiling_fp(int32_t x)
>  	return ret;
>  }
>  
> -static inline int32_t percent_fp(int percent)
> -{
> -	return div_fp(percent, 100);
> -}
> -
>  static inline u64 mul_ext_fp(u64 x, u64 y)
>  {
>  	return (x * y) >> EXT_FRAC_BITS;
> @@ -91,11 +86,6 @@ static inline u64 div_ext_fp(u64 x, u64 y)
>  	return div64_u64(x << EXT_FRAC_BITS, y);
>  }
>  
> -static inline int32_t percent_ext_fp(int percent)
> -{
> -	return div_ext_fp(percent, 100);
> -}
> -
>  /**
>   * struct sample -	Store performance sample
>   * @core_avg_perf:	Ratio of APERF/MPERF which is the actual average
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201221222015.GA3389117%40ubuntu-m3-large-x86.
