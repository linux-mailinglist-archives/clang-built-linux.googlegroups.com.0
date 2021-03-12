Return-Path: <clang-built-linux+bncBDGONMPGUAPRBM5EV6BAMGQE6WDQQ6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id DC75333988A
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 21:42:27 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id z6sf11642604wrh.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 12:42:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615581747; cv=pass;
        d=google.com; s=arc-20160816;
        b=0xbVuwe9OHosLA06yy9AWM+9oEQShf7nsZaLQjTCkDVRBauzA+bvHCn6mKyExg2tmJ
         LMmmcCfgzKmb6dVohNKDE9sNmiWcuXu2ERRxz0/vJuJjiHygpdn44wHHcHiggp5ks7VZ
         I29VL5V5wCa4nw4S3S6PIM/YyQdCTPzkJ8EXuHZhr/a8O2I+l5ULVhr+e3+ew0sVtCis
         glUbEC4iQkX/SyEJg3NNcoJHFyt5nqUWx5uRkacu293Ys1LtwKA+fFIoRLipcxKeHQui
         pZ7l85xvAd/LkpbKpm7IEaapvzmX7sxJ+Xp59TofjTUWJo/R7vpLHWGuhqZH33OaFIxS
         w3AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=s54rQXkGy9oVG/MKBFE8t5U22C9re7M5SAv5Oz8MSJY=;
        b=TpRqPxFaKY12e5ZvSChuYWd4U17RG/9LxSbwLEfhMT/PkKOKKsqqE/HqCfcJYfTIAK
         4wWrVUP++486IuFD7T/4pNZ5WcCtQqsd0Td7LBzZ/XU7Q+TZzeYrPq4edF/8sUgJJ4t5
         cN8VXyoxcEA0dHd2q3zHfTpWOQagIi7j5TyYahNndTE325M181Svfm8qCGqsV/NOiQyC
         hiTEnCIeR6EA9eZ5YoJ8miyQW6WS0+TqQwrmwpKJV7wuXRFRAxZqg5eq/owgZCfPrdkf
         bk1dzVjMeSd/n8RnVf6qyxcON+StyHZGnllx7r32RrysWjJa7e3MNtzaBIwCdK06SDZY
         Xh4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dPeOC/QY";
       spf=pass (google.com: domain of manojgupta@google.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=manojgupta@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s54rQXkGy9oVG/MKBFE8t5U22C9re7M5SAv5Oz8MSJY=;
        b=tjCnOqkYTD98Nmtxtu1bYi+sUqerwIPqG/ma3bLFDm970Oz6GtMlL/rCGf7JJhmYvd
         Royq6usA34mkFZstTZJ03XJAwWyKbU3x88mNIS4eaoBGALiw8noJOpYt4bpTPAfNt8Gg
         FsLl6oQ/QBUyrrOhLpftpN4G12yKpj1g2gcCxU3lqQcgXYbT4kf1PG8kZDXEwodCdHOf
         Xc7BlzV5IBHXPUdq2HZZt1GhJAOj2FlKZCurTPmPULXvtHYssQx/IJ1q+JuicUlayJU6
         E6KNIbfJ0sJRb0j1B0f8jVpfJS673Kv9NE08vHkscP8n/PPzCuaQQoGCySCBYk29sPtX
         2dug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s54rQXkGy9oVG/MKBFE8t5U22C9re7M5SAv5Oz8MSJY=;
        b=k6ScrkyBw/FgGdMHrYPoNfXPcCrDxMVNlu0MSKCYtkccwJSmzkzK02Q7m9xIVF3axV
         F1AiOVLYNkroguX8HYKUQUhDUsFTwUuatepN0Dl/bTckPTaCAGPVHEL7JBHk5Z6brpgI
         7gKYDCHW7L+pRVuHnvdmoXy128da3pXJ6AtqneyMvKw1oP0kiA1Lsar1y6rpl1Y9kPy7
         5psDm4GF+9DuDp1BrbwbMpxJlBSFE8UClNvPiIDGW6ItgxOT7LlxmGAOqPjYV6IkSKs2
         dL1yLX3mgYKm3XLSN/xsafmhMlY2I9NqPstc+P1EA/0vJhXJB5JzM1iLKG2rdH0u68ll
         +zfQ==
X-Gm-Message-State: AOAM532uYdkGeJfJu6bpaxOrDgi/8v6qxoRpiQEY1x+4o0b3mnNadCkO
	UM5f62Augo7q1L25KDVnBs4=
X-Google-Smtp-Source: ABdhPJwwel/ZNz9hQ60rhAodkWwMvfSztoSA6smxHLx1Dcg+OmUWsjR3lbg5CFMKXxEKAwPpjhgBdA==
X-Received: by 2002:a5d:6312:: with SMTP id i18mr16032006wru.149.1615581747648;
        Fri, 12 Mar 2021 12:42:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls1129718wru.2.gmail; Fri, 12 Mar
 2021 12:42:26 -0800 (PST)
X-Received: by 2002:adf:b1c9:: with SMTP id r9mr16187315wra.51.1615581746867;
        Fri, 12 Mar 2021 12:42:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615581746; cv=none;
        d=google.com; s=arc-20160816;
        b=f3efAlaWxSHihX4+b9Ger7s5hOnGod87AXtDiav3nLqnu2znAEYTWmeSabfhGETow1
         jTwoabesqVqQtwO+jaokMZHO8MIOJizlWCf9mM3ECe7/39Xq8XQIsopcDM9JlQMwPnuG
         ASnVqWAiGKzzOg/cGWoia0dV/NHNKmpMYYhkAITmu6A5Cre1H+Z19CNLnjAyNEHht2hA
         xXzYJOAr1r/ERHsHLq7QrnK2YxxQ3/q4kfwoPrF7kkrQ0Z7q1irhINwI19F+AeNooZ1V
         Y0an0iZhEoLd05kk4R7rLWYp++0IE05w4A3MUT4eaKo7BdKdk2ylis1doDvWoZz4GYWB
         1RiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=82KaU8rRGbC4SRlavZEO/o0WBgI/8cKjqwRh6gM9xL4=;
        b=Z3S1tqTOyVAmhhjW79gwJ/6ZFUBNdYCu6T8w9L5/Ew2V2tUBTDJkW7qA1fhb+CTL5n
         kitf82xwaxgiDucj//utIoTWWHrCQJ7vl9R3I3q+pM+qzdPkYu1wnp3o0rP+7jXOv3WL
         v++HcqBYvOHnJY/PSJSCDdofU2q8mW0IfcbMRYO2Gfvp1/Ye8dIC43fV2wcQ1fgky/G8
         BYWDA1YQ2EqkTmAie3MfFufdPP78786Ck1coIv+a0k/4h1hlnq7ZZ7VS0Y2vJW5PspkP
         QdcBq6rlBoYySaTLhFSDKA0I6lkpxiXgqfGKFckJm3hQE1nfX0e+kPiTtGfz3qEfEtXI
         otHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dPeOC/QY";
       spf=pass (google.com: domain of manojgupta@google.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=manojgupta@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com. [2a00:1450:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id y12si271169wrs.0.2021.03.12.12.42.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 12:42:26 -0800 (PST)
Received-SPF: pass (google.com: domain of manojgupta@google.com designates 2a00:1450:4864:20::32b as permitted sender) client-ip=2a00:1450:4864:20::32b;
Received: by mail-wm1-x32b.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so12964024wmj.2
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 12:42:26 -0800 (PST)
X-Received: by 2002:a1c:5416:: with SMTP id i22mr14764626wmb.146.1615581746480;
 Fri, 12 Mar 2021 12:42:26 -0800 (PST)
MIME-Version: 1.0
References: <CAH=QcsjHmWdLU6u-imNYWU2v=9ieP8bOk22FLERUd+rVUeqZNw@mail.gmail.com>
 <20210312203900.1012048-1-manojgupta@google.com>
In-Reply-To: <20210312203900.1012048-1-manojgupta@google.com>
From: "'Manoj Gupta' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Mar 2021 12:42:15 -0800
Message-ID: <CAH=QcsjRO26U_Y12B9LWJakvrFa+hyT4V5dmKjmYGRLNO5b=9A@mail.gmail.com>
Subject: Re: [PATCH] scripts/recordmcount.{c,pl}: support -ffunction-sections
 .text.* section names
To: gregkh@linuxfoundation.org, sashal@kernel.org
Cc: stable@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Jian Cai <jiancai@google.com>, 
	Doug Anderson <dianders@google.com>, Luis Lozano <llozano@google.com>, 
	Joe Lawrence <joe.lawrence@redhat.com>, Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: manojgupta@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="dPeOC/QY";       spf=pass
 (google.com: domain of manojgupta@google.com designates 2a00:1450:4864:20::32b
 as permitted sender) smtp.mailfrom=manojgupta@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Manoj Gupta <manojgupta@google.com>
Reply-To: Manoj Gupta <manojgupta@google.com>
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

On Fri, Mar 12, 2021 at 12:39 PM Manoj Gupta <manojgupta@google.com> wrote:
>
> From: Joe Lawrence <joe.lawrence@redhat.com>
>
> commit 9c8e2f6d3d361439cc6744a094f1c15681b55269 upstream.
>
> When building with -ffunction-sections, the compiler will place each
> function into its own ELF section, prefixed with ".text".  For example,
> a simple test module with functions test_module_do_work() and
> test_module_wq_func():
>
>   % objdump --section-headers test_module.o | awk '/\.text/{print $2}'
>   .text
>   .text.test_module_do_work
>   .text.test_module_wq_func
>   .init.text
>   .exit.text
>
> Adjust the recordmcount scripts to look for ".text" as a section name
> prefix.  This will ensure that those functions will be included in the
> __mcount_loc relocations:
>
>   % objdump --reloc --section __mcount_loc test_module.o
>   OFFSET           TYPE              VALUE
>   0000000000000000 R_X86_64_64       .text.test_module_do_work
>   0000000000000008 R_X86_64_64       .text.test_module_wq_func
>   0000000000000010 R_X86_64_64       .init.text
>
> Link: http://lkml.kernel.org/r/1542745158-25392-2-git-send-email-joe.lawrence@redhat.com
>
> Signed-off-by: Joe Lawrence <joe.lawrence@redhat.com>
> Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
>
> [nc: Resolve conflict because of missing 42c269c88dc146982a54a8267f71abc99f12852a]
> Signed-off-by: Manoj Gupta <manojgupta@google.com>
> ---
>  scripts/recordmcount.c  |  2 +-
>  scripts/recordmcount.pl | 13 +++++++++++++
>  2 files changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/recordmcount.c b/scripts/recordmcount.c
> index 7250fb38350c..8cba4c44da4c 100644
> --- a/scripts/recordmcount.c
> +++ b/scripts/recordmcount.c
> @@ -362,7 +362,7 @@ static uint32_t (*w2)(uint16_t);
>  static int
>  is_mcounted_section_name(char const *const txtname)
>  {
> -       return strcmp(".text",           txtname) == 0 ||
> +       return strncmp(".text",          txtname, 5) == 0 ||
>                 strcmp(".ref.text",      txtname) == 0 ||
>                 strcmp(".sched.text",    txtname) == 0 ||
>                 strcmp(".spinlock.text", txtname) == 0 ||
> diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
> index ccd6614ea218..5ca4ec297019 100755
> --- a/scripts/recordmcount.pl
> +++ b/scripts/recordmcount.pl
> @@ -138,6 +138,11 @@ my %text_sections = (
>       ".text.unlikely" => 1,
>  );
>
> +# Acceptable section-prefixes to record.
> +my %text_section_prefixes = (
> +     ".text." => 1,
> +);
> +
>  # Note: we are nice to C-programmers here, thus we skip the '||='-idiom.
>  $objdump = 'objdump' if (!$objdump);
>  $objcopy = 'objcopy' if (!$objcopy);
> @@ -503,6 +508,14 @@ while (<IN>) {
>
>         # Only record text sections that we know are safe
>         $read_function = defined($text_sections{$1});
> +       if (!$read_function) {
> +           foreach my $prefix (keys %text_section_prefixes) {
> +               if (substr($1, 0, length $prefix) eq $prefix) {
> +                   $read_function = 1;
> +                   last;
> +               }
> +           }
> +       }
>         # print out any recorded offsets
>         update_funcs();
>
> --
> 2.31.0.rc2.261.g7f71774620-goog
>

This patch should apply cleanly to 4.4.y and 4.9.y branches.

Thanks,
Manoj

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAH%3DQcsjRO26U_Y12B9LWJakvrFa%2BhyT4V5dmKjmYGRLNO5b%3D9A%40mail.gmail.com.
