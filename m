Return-Path: <clang-built-linux+bncBCS7XUWOUULBBKGSTP7AKGQE3BEIBTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1CC2CB215
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 02:08:57 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id m9sf57246ioa.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 17:08:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606871337; cv=pass;
        d=google.com; s=arc-20160816;
        b=K4JPi1jzfzaEyLpHiCqI+STAWBZDHlA4mg34QbgNNTQQouH92IqG5Sb1Pse3jGosky
         lv9eHtR2gdbm6X92jotOZLBPyLrqx38SeajgLpTE90ZA64BT/rkma4MYJq9od2YRlApU
         Rm7Qf3jAuT/GCTZb33MM2+PkPVf8w51ouFNsiFsSctNGVZlw7agyVE5iUKlQ7/WOc6Rf
         ozU7JYYGvhw56sNyKGEUYQrOFPT7pBseHmO6Fl//zcy21zwIvF528oVbZg1XWlaNpJKY
         jcMfCIKDdVTFcr/t1ZAzseXSfxpxm43QsxKBI35ZPpRmLK1QfnyU+hXWZbvkisprpH0w
         GMqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=JqbkkOL8W0Hp6z4nEJ8fhrrWCwdxb5RhQAhu3u9955M=;
        b=uHRABvUYWfza9n+/y6ZiLPgf7nK162sB1aRrA++OCB3lyvtKYNcUyOuh3Cg2PDRxW8
         5v/HR0P5ZN8UDlfRWT8EvBwtaliOdY04MDb46LGjHyybarYJzqfVOY9fyfJMy6WZYiso
         h7+SBrsoQxH0lQoNoLE6cbQZIk2aUeWSeMmgVMUASxMBFujHD1Ry7cdzs8EOE9rw5pFf
         Ab/AnTaCFkBGeu+RMTZIq4H9MH5K9+8GptuP1ANxmtTX1kBu0oJeGUKTVfhY6FdezSrh
         5emJsRkKXXROEyppv1m1/5BucOF+YpFvbZngNum6A2D2as0T2ZzE1Ve65LxB7k8F1xRz
         nK9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wApgbcd8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JqbkkOL8W0Hp6z4nEJ8fhrrWCwdxb5RhQAhu3u9955M=;
        b=OZLhFyMOLJTodUMt0lbgWYQPRD968SMK4Gvf6XCgSBaTF4yzFBY6iWcXRNkwRGmyYF
         rIftwPcbNgWaRzB5qztIB7DrsGl+208DMoC9GqLayAC8+e19xsL4oL6ndHRinTIDvfbU
         O8FbweQ8aPjLePATV/tBxmJ15jG3mdgsWPb+82qjUQX98vWamjLNYgXu6NaQDxZV5VXX
         watQV3Breoj1SZbiCtH4kZ4iqcSKolqXb3FUyZ4fVNJFleh/mCibS4XTOv4DZpCWeMjf
         lvQhwnr5B8fjA8kHLJMKqf76BFL4zvMFxwDCN9jhTblxDNFT+/eC+Qt5kZPQQORNk5cz
         Ieyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JqbkkOL8W0Hp6z4nEJ8fhrrWCwdxb5RhQAhu3u9955M=;
        b=RXBnQVt5qirNqmS6NBw39RJurt06ikdIo1zEgQVXnP9Y88Dk9rn7F1dUObgRELKXgV
         J2M5LYFyj/hu2LaZSUcNb1Xo3OpJSgJus2zVM9ibs+Nv9SX8T7wh49Wh1YoCPZsFNMBA
         yM3CB8eUQrQaT6WMRML5Gs8OPZ926ohIdEdVriYlroHm+jv0s0fJrTE4Mmo2ebbV5Wdx
         BzhPl6CZA5Gg5u2XD9QWrNUhb9tlWYYf2wGkg/rnXeMP04ekTDRGtrt2v9wab9zAnLL+
         sClHw8mkP4W0lV643SPfqNoTx3wDf7udT6R/F1wOlsesqftOkPk/4DDalr1kXVL/bWDt
         wzSg==
X-Gm-Message-State: AOAM530rjTUUQR5+ATD49PfMLe6WrpDTiNjIDcxO+0ttejE4oxFa+vB1
	hF4h/DK2NgXz2OmHnyPjeis=
X-Google-Smtp-Source: ABdhPJzPys13E8xNpHmb/94M5Od5lWurlqVxNWr73+/NbgYNoD0fyeEE69CaLGCMvhObsUnibeYdyg==
X-Received: by 2002:a92:d40d:: with SMTP id q13mr311473ilm.253.1606871336918;
        Tue, 01 Dec 2020 17:08:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d247:: with SMTP id v7ls52767ilg.0.gmail; Tue, 01 Dec
 2020 17:08:56 -0800 (PST)
X-Received: by 2002:a92:d80e:: with SMTP id y14mr345182ilm.68.1606871336418;
        Tue, 01 Dec 2020 17:08:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606871336; cv=none;
        d=google.com; s=arc-20160816;
        b=xbDWT8iIYKG1c3vTKngUKiK1wVwI4Fd60KXHdh7WoxMg5tc1dqHWPMH372TswgDvne
         zh8d1OMp65DfeEl639gVaqnyP9bfJiSPCTPvOIssfCefFIkY2rGDsJhDRGgZawuyxy92
         nhHWyDfjZsZTXB8ZmGmM7UYBkNuLj4N0UDvI31QFuoYNmXwh0E89KwnjuCvASCuzFv4w
         9Trp9K8Rn7QvAiIqSQQOOFySZk1cMHw1ZNRfCRnBDnwgrwK17PdqBXpM7KfhL/QC1FNC
         1CNRHMwyPFOwTnrOVyJ3P9N0oH/TzvJ5sbwJCLy4hKcOwLDo/f96c1/b3mWdRJfQrbnk
         Y9RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ltLpeaxsolQPncFM8sGYWmfl/tK1nPLTaUTVm/mA5BE=;
        b=kFtYa+tTLWAoPDyJQvANU5hMm25iYxmhk+MxVIIvFEqK161MO8UqbRyeqkfCvrZpWd
         zbU8ezjwE+DNwyZh6PPhLu/gJr8WLZ9kcQ/gtYatMlvdWqsbRXnnWPMDCz5eLweX4PFU
         40CufYN6MLD4wLYWPji1irXRqSXaPkG5XO/vrXtfxp7AMiy/cay5kKymFNXWKKZfOzS5
         E/iL5COuMzOZC399t55Ayw5dQbTK2NUP7XVRulGBhahZo71oekWpXa6XEW7m+iCRoYAu
         hFqDCXiqJrPYpm4TrneP0zRg25Vf9tb0XdiROF9JhBiyMFGKEyZAmpIssL2ypYoLQF9U
         SYeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wApgbcd8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id j18si9464iow.0.2020.12.01.17.08.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 17:08:56 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id q3so40903pgr.3
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 17:08:56 -0800 (PST)
X-Received: by 2002:a63:a62:: with SMTP id z34mr302597pgk.193.1606871335639;
        Tue, 01 Dec 2020 17:08:55 -0800 (PST)
Received: from google.com ([100.117.212.88])
        by smtp.gmail.com with ESMTPSA id f17sm137871pfk.70.2020.12.01.17.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 17:08:54 -0800 (PST)
Date: Tue, 1 Dec 2020 17:08:50 -0800
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jakub Jelinek <jakub@redhat.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Alistair Delva <adelva@google.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
Message-ID: <20201202010850.jibrjpyu6xgkff5p@google.com>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
 <20201104005343.4192504-4-ndesaulniers@google.com>
 <CAK7LNAT5MQqUddv+QbFu5ToLBK3eUPArHSBR=5AOS3ONtMqKaw@mail.gmail.com>
 <CAFP8O3Ki9HoqcV450fn29fBOWAbmuGAdB6USLz8pGsW4Vzf7sg@mail.gmail.com>
 <CAK7LNAS_hxevOS7hKxepyCBVU-4j87Yf5Y8DB6mFq+4xuaz3AA@mail.gmail.com>
 <20201201093253.GJ2672@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20201201093253.GJ2672@gate.crashing.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wApgbcd8;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On 2020-12-01, Segher Boessenkool wrote:
>On Tue, Dec 01, 2020 at 12:38:16PM +0900, Masahiro Yamada wrote:
>> > We can bump -Wa,-gdwarf-2 to -Wa,-gdwarf-3 since GNU actually emits
>> > DWARF v3 DW_AT_ranges (see
>> > https://sourceware.org/bugzilla/show_bug.cgi?id=26850 )
>> > This can avoid the `warning: DWARF2 only supports one section per
>> > compilation unit` warning for Clang.
>
>That warning should be "there can be only one section with executable
>code per translation unit", or similar.
>
>> I am not a DWARF spec expert.
>
>Neither am I.
>
>> Please teach me.
>>
>> In my understanding, "DWARF2 only supports one section ..."
>> is warned only when building .S files with LLVM_IAS=1
>
>.S files are simply run through the C preprocessor first, and then given
>to the assembler.  The only difference there should be wrt debug info is
>you could have some macros that expand to assembler debug statements.
>
>> If this is due to the limitation of DWARF v2, why is it OK to
>> build .c files with LLVM_IAS?
>
>The compiler can of course make sure not to use certain constructs in
>its generated assembler code, while the assembler will have to swallow
>whatever the user wrote.
>

These are all correct. You can use `llvm-dwarfdump a.o` to dump a .o file.
It has one DW_TAG_compile_unit. If the translation unit has a single
contiguous address range, the assembler can emit a pair of
DW_AT_low_pc/DW_AT_high_pc (available in DWARF v2). In the case of
multiple executable sections, it is not guaranteed that in the final
linked image the sections will be contiguous, so the assembler has to
assume there may be non-contiguous address ranges and use DW_AT_ranges.

Unfortunately DW_AT_ranges was introduced in DWARF v3 and technically
not available in DWARF v2. But GNU as ignores this and emits
DW_AT_ranges anyway (this is probably fine - like using a GNU extension).

If -Wa,-gdwarf-2 -> -Wa,-gdwarf-3 can eliminate the LLVM integrated
assembler's warning, we should do it. If people think -Wa,-gdwarf-2 is
not useful and want to delete it, I'll be happier. Whether it is
necessary to use -Wa,-gdwarf-2/-Wa,-gdwarf-5? Personally I would think
this is unnecessary, but I won't mind if people don't mind the
additional complexity in Makefile. (I implemented the -gdwarf-5 address
range stuff for the integrated assembler).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201202010850.jibrjpyu6xgkff5p%40google.com.
