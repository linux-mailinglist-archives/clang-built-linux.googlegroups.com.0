Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJM3XXYQKGQEZXSDAMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FE714AB54
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 21:52:55 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id k26sf7177355pfp.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 12:52:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580158374; cv=pass;
        d=google.com; s=arc-20160816;
        b=DlwIwN8ZWCyWiYW3YrOfFaAkX80YSlhfRsbudkHTifL7g9Cr8lmOt1ukHecB1U+Ciq
         Ps/9+yVZxzoZl8RG5Hu3pSD93qn9QGHqV4HvLFAtd6LM0SkHksOKUzmPrqPYcFVPMUrn
         rLVy7CZDarZS4i3qpnjhDagHi/w9qtShjPRgBz/RK8gH5yDgWJw+cssP+jNOKFvSjPtl
         gRY7d9IqC6gYpDoDHudPcDc51akz6yIV1q5oakUkayQjnTdZt9MLAofXrVm45Ph8gVrV
         bo957EiPw//ZdQQ9UETIZB9UC5k7sjGyA4XUkPXbTWRVh0GJcHQEd1z8G6gHySdMHuJh
         SGOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=49dQ3q81qzysPhjL5tckpGdKDAvasLeuUlNilug9+QA=;
        b=r5vS8m1A0yrDdUZ1mFpXWSt8H6QLWOAyeefrjChVR/kPBMuqUVAgb/HRMkeYO5Mq0O
         l6ipP55y8Y8MDDtPoYDQCE7eYYBvCKqltFzQ/DkWrAaih5FV9kER3z8Y+Iy3SWiqgG5X
         3jpM0anPHpsT3KCVw3PX55P1YvEZFsNpzEuYdfhTD3hagNr8jbwJs7vE6pUndDGVkZsZ
         3/ctjehdxxYc9ou/HBFoVzOQipJ2CI/jC5Iw3ZxHSrP+maK9X338nAiD8JIsZyW7OdNe
         6Z25dJM3OYa95wnHjrDP+BEM4yyCmf38AcXRHR3gIaFA5YFz+NaxoaBefuacUYPpPGO3
         gtrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xrxs/PB3";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=49dQ3q81qzysPhjL5tckpGdKDAvasLeuUlNilug9+QA=;
        b=drs0523YkpcHT71yFTYuaaW5XMboDrKGzdXkYArY2hXSyzDUKs9OiX7xVtHHfT2Y/l
         xqKxSj7gnxzKx24zAhI1rU5svVeE+0rtBNEmPCYXbh40WfYighHkIENkM0IL8MkXT1Tu
         RhUF+xYIEge4k4Y0sSdJ6/3Pf5EU9btLwbP+DM0eyhlcoi/1IlsSSgVExJD1HnBO91Sc
         RyApNxvTcOFnA8uGilyIYnIgr1LP7GSaMiTmcIqa8AEFr99WGD7S/MTzlARxR+Fs5d0D
         vVmL64co5LfDjn8HKR5RLrlgglmYHApBsiXPkAoCx56wHO55ICu0laB7AygmFzvcQZie
         sq0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=49dQ3q81qzysPhjL5tckpGdKDAvasLeuUlNilug9+QA=;
        b=rKFgPaglCcendnSY9x+uGNyFkl+b6Er3EJ5IlH1ZdG+2ZyG3t9F24SeEQF408Or59/
         X3dJAJHy5GUV6RoNDa9E8cSWahHDCQXoZtCU1pm+T/oefxQ+lQ7XqxR+G0AkDo2/skQn
         BYapTjW5nyjymCpnV50ZwwclyE/+H8/hLKoFc30XrIIIPk1A3QCpBpnrRS5HJQgcLnSn
         meNI5TYJ/jVB2NC0bSxWysh/7T4acGul9lD/NzVBWJzvyv8o0A8ID8TH91mDmf+oCvmE
         jfW560GdBaRE3Z0DTLZMSDW4Kh4drJ391tnH8uI9Zv6/dyAuCcH9Nl0x0WdT58ydcdLU
         ujhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=49dQ3q81qzysPhjL5tckpGdKDAvasLeuUlNilug9+QA=;
        b=emwX/6uju0fTI4sthQ5zmoLU2q0qZoOqXusqIvjhi+eSyKELJU5k7LTYIERipFHFQG
         pmpw32yJo8g2PfF/Po++t83adIf1Xj7Mz7AlRXDGjARTkWAtLCkhThYCIS4c4lGEtkj2
         5sB9seSOmMlG16vOo+UG6Hzww2xzbGHWpRtAULa2yf0pqti+ad3cosG8GwKLj6OEMCFM
         ZMAnV5EXVkIDKZlG/GkrPVcQftFE/81knkvUWeHtWH574iNpLsDP1dc6eAien2ihLsVp
         PIP3el0Zf16YFJJEYuKQ4wFP7guSmJKxu19UX8JwJOUP0uRNbeX6tkbN6zyQVVoj8Cve
         t8Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUC1bcojQkFazTL1X9fUJ6oe4hZzAGD7vHlyeuxGYGCvn7AeWKb
	+hxWxSkR7LIok1za2bpXQ+o=
X-Google-Smtp-Source: APXvYqyTEHUkWlvQhAnF4jHNsGMYPRjapqSRi83o6feUGTrgpbKiPPYnTmO/RdH5rnZT4NYC36xLWA==
X-Received: by 2002:a65:66c8:: with SMTP id c8mr22431251pgw.161.1580158373890;
        Mon, 27 Jan 2020 12:52:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cf4a:: with SMTP id b10ls4947215pgj.0.gmail; Mon, 27 Jan
 2020 12:52:53 -0800 (PST)
X-Received: by 2002:a63:2949:: with SMTP id p70mr21886910pgp.191.1580158373393;
        Mon, 27 Jan 2020 12:52:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580158373; cv=none;
        d=google.com; s=arc-20160816;
        b=FCq9gad1q6n8H8W0UUB7hBJptOW1XPIBMinK/Yy2ldi3ttCugEHzjijPmFgzHTFajf
         OuqsHeky5Q4IKL0RTktEF0kSUcs0d7DP83JbOWjV+Gbu0F83ARsnEET1HHwksZ0H8bpp
         K2NRurzaGbx1m7ZdUIfSEd9GrjohGTCRQ7Tpo+dbUEO/uE9TjD9m9eu4oZdxjZ7cBIQg
         xJmYBu2PosZbZfy5hUnbMdeXaCANBXyMCGHNbz3YQiLy/L9eG1R7aCgXqO372CMwnHhw
         lUiPqrIGV53kx2AeMvgpuclqiWCDU/5H1qD47dqw0CY7Zh8+kMAGgCr3IkDGKzlJ0l3T
         HRsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FAvjESqfHP0fRix1omPJhQlHaWmPxKT1qAt5Io3Ecl0=;
        b=k5JagzjBp5Z5FVVo6NsFlHWo4zq7o6oh9HHhS4lFuHC+uPQuUd5hA60MI1gsoVg1mi
         Gq6jF6idjkngzGu8dHMhjUypw/M79cxsVUqCE/Mwx6nbEYyMi6Dv1v2kiDG8iN7uOhMp
         qWRCC3L4/c6WlvPVzxUz2GNI1N4CphADhT4FlMILf+7yClF4feeFWHJLiaSFicstDpNg
         uhL3KgYTtYaG4eoaBfj/4c343m+dJC6HfnXLEjczCeOAyQktHH/hxHxdhUoQhes7pxfY
         35IM+wUwXv5rrKV0OGfcbdkkpE0T8w9mMx1GXtgHLY62zWBGIh5dRoHUqGDJD8kaLsxG
         03iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xrxs/PB3";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id i16si746pju.1.2020.01.27.12.52.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2020 12:52:53 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t14so4184848plr.8
        for <clang-built-linux@googlegroups.com>; Mon, 27 Jan 2020 12:52:53 -0800 (PST)
X-Received: by 2002:a17:90a:17c2:: with SMTP id q60mr534633pja.111.1580158372874;
        Mon, 27 Jan 2020 12:52:52 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.85])
        by smtp.gmail.com with ESMTPSA id y197sm17641232pfc.79.2020.01.27.12.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 12:52:52 -0800 (PST)
Date: Mon, 27 Jan 2020 13:52:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: John Hubbard <jhubbard@nvidia.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Al Viro <viro@zeniv.linux.org.uk>,
	Christoph Hellwig <hch@infradead.org>,
	Dan Williams <dan.j.williams@intel.com>,
	Dave Chinner <david@fromorbit.com>, Ira Weiny <ira.weiny@intel.com>,
	Jan Kara <jack@suse.cz>, Jason Gunthorpe <jgg@ziepe.ca>,
	Jonathan Corbet <corbet@lwn.net>,
	=?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
	"Kirill A . Shutemov" <kirill@shutemov.name>,
	Michal Hocko <mhocko@suse.com>,
	Mike Kravetz <mike.kravetz@oracle.com>,
	Shuah Khan <shuah@kernel.org>, Vlastimil Babka <vbabka@suse.cz>,
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-kselftest@vger.kernel.org, linux-rdma@vger.kernel.org,
	linux-mm@kvack.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/3] mm/gup_benchmark: support pin_user_pages() and
 related calls
Message-ID: <20200127205247.GA578@Ryzen-7-3700X.localdomain>
References: <20200125021115.731629-1-jhubbard@nvidia.com>
 <20200125021115.731629-3-jhubbard@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200125021115.731629-3-jhubbard@nvidia.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Xrxs/PB3";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi John,

On Fri, Jan 24, 2020 at 06:11:14PM -0800, John Hubbard wrote:
> Up until now, gup_benchmark supported testing of the
> following kernel functions:
> 
> * get_user_pages(): via the '-U' command line option
> * get_user_pages_longterm(): via the '-L' command line option
> * get_user_pages_fast(): as the default (no options required)
> 
> Add test coverage for the new corresponding pin_*() functions:
> 
> * pin_user_pages_fast(): via the '-a' command line option
> * pin_user_pages():      via the '-b' command line option
> 
> Also, add an option for clarity: '-u' for what is now (still) the
> default choice: get_user_pages_fast().
> 
> Also, for the commands that set FOLL_PIN, verify that the pages
> really are dma-pinned, via the new is_dma_pinned() routine.
> Those commands are:
> 
>     PIN_FAST_BENCHMARK     : calls pin_user_pages_fast()
>     PIN_BENCHMARK          : calls pin_user_pages()
> 
> In between the calls to pin_*() and unpin_user_pages(),
> check each page: if page_dma_pinned() returns false, then
> WARN and return.
> 
> Do this outside of the benchmark timestamps, so that it doesn't
> affect reported times.
> 
> Reviewed-by: Ira Weiny <ira.weiny@intel.com>
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> ---
>  mm/gup_benchmark.c                         | 70 ++++++++++++++++++++--
>  tools/testing/selftests/vm/gup_benchmark.c | 15 ++++-
>  2 files changed, 79 insertions(+), 6 deletions(-)
> 
> diff --git a/mm/gup_benchmark.c b/mm/gup_benchmark.c
> index 8dba38e79a9f..3d5fb765e4e6 100644
> --- a/mm/gup_benchmark.c
> +++ b/mm/gup_benchmark.c
> @@ -8,6 +8,8 @@
>  #define GUP_FAST_BENCHMARK	_IOWR('g', 1, struct gup_benchmark)
>  #define GUP_LONGTERM_BENCHMARK	_IOWR('g', 2, struct gup_benchmark)
>  #define GUP_BENCHMARK		_IOWR('g', 3, struct gup_benchmark)
> +#define PIN_FAST_BENCHMARK	_IOWR('g', 4, struct gup_benchmark)
> +#define PIN_BENCHMARK		_IOWR('g', 5, struct gup_benchmark)
>  
>  struct gup_benchmark {
>  	__u64 get_delta_usec;
> @@ -19,6 +21,47 @@ struct gup_benchmark {
>  	__u64 expansion[10];	/* For future use */
>  };
>  
> +static void put_back_pages(int cmd, struct page **pages, unsigned long nr_pages)

We received a Clang build report on this patch because the use of
PIN_FAST_BENCHMARK and PIN_BENCHMARK in the switch statement below will
overflow int; this should be unsigned int to match the cmd parameter in
the ioctls.

The report can be read here if you care for it:

https://groups.google.com/d/msg/clang-built-linux/gyGayC_dnis/D1celSStEgAJ

Cheers,
Nathan

> +{
> +	int i;
> +
> +	switch (cmd) {
> +	case GUP_FAST_BENCHMARK:
> +	case GUP_LONGTERM_BENCHMARK:
> +	case GUP_BENCHMARK:
> +		for (i = 0; i < nr_pages; i++)
> +			put_page(pages[i]);
> +		break;
> +
> +	case PIN_FAST_BENCHMARK:
> +	case PIN_BENCHMARK:
> +		unpin_user_pages(pages, nr_pages);
> +		break;
> +	}
> +}
> +
> +static void verify_dma_pinned(int cmd, struct page **pages,
> +			      unsigned long nr_pages)
> +{
> +	int i;
> +	struct page *page;
> +
> +	switch (cmd) {
> +	case PIN_FAST_BENCHMARK:
> +	case PIN_BENCHMARK:
> +		for (i = 0; i < nr_pages; i++) {
> +			page = pages[i];
> +			if (WARN(!page_dma_pinned(page),
> +				 "pages[%d] is NOT dma-pinned\n", i)) {
> +
> +				dump_page(page, "gup_benchmark failure");
> +				break;
> +			}
> +		}
> +		break;
> +	}
> +}
> +
>  static int __gup_benchmark_ioctl(unsigned int cmd,
>  		struct gup_benchmark *gup)
>  {
> @@ -66,6 +109,14 @@ static int __gup_benchmark_ioctl(unsigned int cmd,
>  			nr = get_user_pages(addr, nr, gup->flags, pages + i,
>  					    NULL);
>  			break;
> +		case PIN_FAST_BENCHMARK:
> +			nr = pin_user_pages_fast(addr, nr, gup->flags,
> +						 pages + i);
> +			break;
> +		case PIN_BENCHMARK:
> +			nr = pin_user_pages(addr, nr, gup->flags, pages + i,
> +					    NULL);
> +			break;
>  		default:
>  			kvfree(pages);
>  			ret = -EINVAL;
> @@ -78,15 +129,22 @@ static int __gup_benchmark_ioctl(unsigned int cmd,
>  	}
>  	end_time = ktime_get();
>  
> +	/* Shifting the meaning of nr_pages: now it is actual number pinned: */
> +	nr_pages = i;
> +
>  	gup->get_delta_usec = ktime_us_delta(end_time, start_time);
>  	gup->size = addr - gup->addr;
>  
> +	/*
> +	 * Take an un-benchmark-timed moment to verify DMA pinned
> +	 * state: print a warning if any non-dma-pinned pages are found:
> +	 */
> +	verify_dma_pinned(cmd, pages, nr_pages);
> +
>  	start_time = ktime_get();
> -	for (i = 0; i < nr_pages; i++) {
> -		if (!pages[i])
> -			break;
> -		put_page(pages[i]);
> -	}
> +
> +	put_back_pages(cmd, pages, nr_pages);
> +
>  	end_time = ktime_get();
>  	gup->put_delta_usec = ktime_us_delta(end_time, start_time);
>  
> @@ -105,6 +163,8 @@ static long gup_benchmark_ioctl(struct file *filep, unsigned int cmd,
>  	case GUP_FAST_BENCHMARK:
>  	case GUP_LONGTERM_BENCHMARK:
>  	case GUP_BENCHMARK:
> +	case PIN_FAST_BENCHMARK:
> +	case PIN_BENCHMARK:
>  		break;
>  	default:
>  		return -EINVAL;
> diff --git a/tools/testing/selftests/vm/gup_benchmark.c b/tools/testing/selftests/vm/gup_benchmark.c
> index 389327e9b30a..43b4dfe161a2 100644
> --- a/tools/testing/selftests/vm/gup_benchmark.c
> +++ b/tools/testing/selftests/vm/gup_benchmark.c
> @@ -18,6 +18,10 @@
>  #define GUP_LONGTERM_BENCHMARK	_IOWR('g', 2, struct gup_benchmark)
>  #define GUP_BENCHMARK		_IOWR('g', 3, struct gup_benchmark)
>  
> +/* Similar to above, but use FOLL_PIN instead of FOLL_GET. */
> +#define PIN_FAST_BENCHMARK	_IOWR('g', 4, struct gup_benchmark)
> +#define PIN_BENCHMARK		_IOWR('g', 5, struct gup_benchmark)
> +
>  /* Just the flags we need, copied from mm.h: */
>  #define FOLL_WRITE	0x01	/* check pte is writable */
>  
> @@ -40,8 +44,14 @@ int main(int argc, char **argv)
>  	char *file = "/dev/zero";
>  	char *p;
>  
> -	while ((opt = getopt(argc, argv, "m:r:n:f:tTLUwSH")) != -1) {
> +	while ((opt = getopt(argc, argv, "m:r:n:f:abtTLUuwSH")) != -1) {
>  		switch (opt) {
> +		case 'a':
> +			cmd = PIN_FAST_BENCHMARK;
> +			break;
> +		case 'b':
> +			cmd = PIN_BENCHMARK;
> +			break;
>  		case 'm':
>  			size = atoi(optarg) * MB;
>  			break;
> @@ -63,6 +73,9 @@ int main(int argc, char **argv)
>  		case 'U':
>  			cmd = GUP_BENCHMARK;
>  			break;
> +		case 'u':
> +			cmd = GUP_FAST_BENCHMARK;
> +			break;
>  		case 'w':
>  			write = 1;
>  			break;
> -- 
> 2.25.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200127205247.GA578%40Ryzen-7-3700X.localdomain.
