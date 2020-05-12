Return-Path: <clang-built-linux+bncBCS7XUWOUULBBD4B5T2QKGQEEFOC6EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id E19201CFED0
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 22:01:20 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id v23sf14077071ioj.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 13:01:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589313680; cv=pass;
        d=google.com; s=arc-20160816;
        b=AsdRpEoh+O1uPU4/s+0y2uB30JLBFv+8SqxYo8S2DR6W6ENdDAjsMq/30qe6kfmSpy
         OnFTs2zB8HBDET9Errgm8JiKQ+ScxVoCAglTkcYTL296A/CVMJFq39FFhkVgImknxpZz
         i1Kai3/omrFQT5mGcNLk9EKlHOjekalkNOFZYMeYFUNRxm3JBCxgeWKSZ2fT6bgpH9fG
         Hb2JzETDhsBOPyFoA+Ei/7pO8pjKnrBh2OJGy7OX7UDO1385ikdKbiKFHK/7GnSfniMk
         O3T+D/hd7lq2Sd3lOzVEYOat+yWc6v0EMTkr15Mk0cBaxnZEni6Y8n9ep7v3jvbbBXrY
         rf4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=QOW5oyBcUNdgKLSpoOFdsEM2AI4Jw+MFjuNG26qk/zM=;
        b=pkbU9H0JbRLkb0BykQG1N68i5tyd6MnQKNdPjU4KGsygs0ialhUmuqjAyIk7vnbeA/
         Xlzl0mixt9oBszVkox1w77cpP3cFnXKbBytXiNL6aleU3FSTOGY6Z2M7oO7Y4RzjeRny
         WigaFPc9GY0GOrZ+VvzCPe70SJL87RoJG3IegiBuiQs7gM0dM3SsPv15UrXhuLRiVpor
         rDTXqZCAWsdJFwhnWf9thQ5JZNNyC5Dv6r8jVGGof2u5oMJXdZ4y6Zg7AmL5qTSfoZjG
         yJuy+odzok2E4fJKtVAmNJlHPNLmshq1fQssfvRUi5H/ZKf6p111r2Ti66q9LL87QSA2
         9o1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O+feywUZ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QOW5oyBcUNdgKLSpoOFdsEM2AI4Jw+MFjuNG26qk/zM=;
        b=B0YS2hGTuXJw+YfqD1S2rJWL7zo8wv/HxzA+OizJjTsityWZd1a4mFtZtHoQAcpeTF
         8V07O7/Z9lOkFfQY9f09JUsQ947Xa67E/PvC9ZXVshjwpJ6hw3MMkB9xSOq60ju4uAyM
         njpDibConLxcfp3uBiixpwGyQMqeVEI1w0FGhgscHTEHcWaQDSX8X8N6ZAP02SzyKVL6
         dWLDdegahx/Ty7Kwj4oLBEvL9nDSPVBn5iAGkZTBMlcyDNnlgRNxl9Gq5ZZRK2rbZkLC
         B568k5NBYVoeLOtCKVv1Oj2wdiBCXoKuYGfn1Mfl0GPhsclRvgh0gEMmq45AS3Vb2F0w
         wCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QOW5oyBcUNdgKLSpoOFdsEM2AI4Jw+MFjuNG26qk/zM=;
        b=gcdqHH3SsAFNPNm8nJref3a8RRx7pwo73IAKzD//H7aUz2/VQMbfJlusGEVvNyes5W
         pTTe7GWo7QgIy+gZLTWHmxnTe1V/6KOI/3GrHlQuoVvrshZ5blDOjGWz3nkSZtytud6b
         9//G+1pTsNwzqisE3wADUItI9P5q+MFH6JTR9++tA1xOXEcR9uexFsufGB2N491p59cs
         eS0xsJc/ZpOh6i3p5vP8/8UMNU0unpCjlE9AVhNGKHecJWRNuOK27rgawcRXMUhiOd0M
         ze9DZkJy+RjE80v2XLpF/ZRaA3Onn91M+PvBW/uFcu6o2icnkER2qbKb7fO6m+xnFPH8
         KdoA==
X-Gm-Message-State: AGi0Pubpb0MfVnC+PPXG67jtrPOnkXp6VUbD7OVlL13XhHhQYGJOh4yw
	Vqu0iyHPZReSxHzmPIHWTds=
X-Google-Smtp-Source: APiQypJFzZW4DFFMUZFAQwmlB7mHu1YHzEaik1hqIKpn71kyj4ipDFywym1VmSxOfFLPm1jYPaqGrw==
X-Received: by 2002:a02:a608:: with SMTP id c8mr20705313jam.95.1589313679808;
        Tue, 12 May 2020 13:01:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:da05:: with SMTP id z5ls2593803ilm.10.gmail; Tue, 12 May
 2020 13:01:19 -0700 (PDT)
X-Received: by 2002:a92:1d49:: with SMTP id d70mr12986204ild.188.1589313679443;
        Tue, 12 May 2020 13:01:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589313679; cv=none;
        d=google.com; s=arc-20160816;
        b=ygm5NYKRudV8mLuKP9tndqwHn++V8Ow0k+foJ2Hxqq0iX0RqVi8fRcjDKz3Jut/CUk
         KF0vRxpqAPXHA7G6wUnVWjFhsXzJ4L5oXIdhaukiWlf8hk0BGXNoya09wbwLhLy/GXvo
         +HyT2PgurzBZlvE3y5Q+OvGiUoOiwAOh2UUBLj+2nrllXsovwTUPzG5Z7uqtA3xhEt5f
         XGDPpGgE2g0NV9RY29m9rGxJmIGyqubNuVT7eg+EZL3RERz/rBPZ7OaN0ZKm8kjeTEzU
         H9J0iW2Hu24OuOjpYhOXz1Qc+T8Z6P0iWWsjti/Ti99FS4cGUTDs6BceUeAH/9i6Jygw
         zpuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PCwSIslbRORlMBU/zrbEKiLIDLAVoW5iRK+1eK2Uwrw=;
        b=c4aKfAWCcvoLWz6vEpuaMEBHHmzZTQDhMTERWwA2b4RqbgPwRNads8+3VXSEqYFPPx
         9DqEKApTT6fBUFynz0XyfozUvt3ow8PGvYtlv6r/aICITmyxyAnr/uxCob79mLPWpiEw
         TU7gYZfmnWYlJMdJlgjyllHowx6UGBCpa4fuNSOmVPAnVTJ+M5vYENWzcs9d8RaJffh9
         L8heTgPVwUqU7mV/ROrCRCdZFF3OTmHjKxKQImFSSmecsc0tY02rxwWBD8vjAfo9YtU4
         KHRdatj6c3/YYnJJcQSKVzHpb6j0YsP+DJV5Xe9GygkQocmYyN2YA/n1LB67Ob2fjMFc
         +1Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O+feywUZ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id o6si39537ilo.4.2020.05.12.13.01.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 13:01:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id g11so2622812plp.1
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 13:01:19 -0700 (PDT)
X-Received: by 2002:a17:902:b582:: with SMTP id a2mr21848929pls.41.1589313678427;
        Tue, 12 May 2020 13:01:18 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id q1sm3154941pfg.194.2020.05.12.13.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2020 13:01:17 -0700 (PDT)
Date: Tue, 12 May 2020 13:01:14 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nick Desaulniers <nick.desaulniers@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	Changbin Du <changbin.du@intel.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
Message-ID: <20200512200114.64vo5lbl7wk2tzxk@google.com>
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
 <20200505004738.ew2lcp27c2n4jqia@google.com>
 <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
 <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O+feywUZ;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-05-12, Nick Desaulniers wrote:
>On Mon, May 11, 2020 at 10:54 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>>
>> > >On Mon, May 4, 2020 at 5:13 AM Nick Desaulniers
>> > ><nick.desaulniers@gmail.com> wrote:
>> > >>
>> > >> As debug information gets larger and larger, it helps significantly save
>> > >> the size of vmlinux images to compress the information in the debug
>> > >> information sections. Note: this debug info is typically split off from
>> > >> the final compressed kernel image, which is why vmlinux is what's used
>> > >> in conjunction with GDB. Minimizing the debug info size should have no
>> > >> impact on boot times, or final compressed kernel image size.
>> > >>
>> Nick,
>>
>> I am OK with this patch.
>>
>> Fangrui provided the minimal requirement for
>> --compress-debug-sections=zlib
>>
>>
>> Is it worth recording in the help text?
>> Do you want to send v2?
>
>Yes I'd like to record that information.  I can also record Sedat's
>Tested-by tag.  Thank you for testing Sedat.
>
>I don't know what "linux-image-dbg file" are, or why they would be
>bigger.  The size of the debug info is the primary concern with this
>config.  It sounds like however that file is created might be
>problematic.
>
>Fangrui, I wasn't able to easily find what version of binutils first
>added support.  Can you please teach me how to fish?

I actually downloaded https://ftp.gnu.org/gnu/binutils/ archives and
located the sources... I think an easier way is:

% cd binutils-gdb
% git show binutils-2_26:./gas/as.c | grep compress-debug-sections
--compress-debug-sections[={none|zlib|zlib-gnu|zlib-gabi}]\n\
...

GNU as 2.25 only supports --compress-debug-sections which means "zlib-gnu" in
newer versions.

Similarly, for GNU ld:

% git show binutils-2_26:./ld/lexsup.c | grep compress-debug-sections
   --compress-debug-sections=[none|zlib|zlib-gnu|zlib-gabi]\n\

(I have spent a lot of time investigating GNU ld's behavior :)

>Another question I had for Fangrui is, if the linker can compress
>these sections, shouldn't we just have the linker do it, not the the
>compiler and assembler?  IIUC the debug info can contain relocations,
>so the linker would have to decompress these, perform relocations,
>then recompress these?  I guess having the compiler and assembler
>compress the debug info as well would minimize the size of the .o
>files on disk.

The linker will decompress debug info unconditionally. Because
input .debug_info sections need to be concatenated to form the output
.debug_info . Whether the output .debug_info is compressed is controlled
by the linker option --compress-debug-sections=zlib, which is not
affected by the compression state of object files.

Both GNU as and GNU ld name the option --compress-debug-sections=zlib.
In a compiler driver context, an unfamiliar user may find
-Wa,--compress-debug-sections=zlib -Wl,--compress-debug-sections=zlib
confusing:/

>Otherwise I should add this flag to the assembler invocation, too, in
>v2.  Thoughts?

Compressing object files along with the linked output should be fine. It
can save disk space. (It'd be great if you paste the comparison
with and w/o object files compressed)

Feel free to add:

Reviewed-by: Fangrui Song <maskray@google.com>

>I have a patch series that enables dwarf5 support in the kernel that
>I'm working up to.  I wanted to send this first.  Both roughly reduce
>the debug info size by 20% each, though I haven't measured them
>together, yet.  Requires ToT binutils because there have been many
>fixes from reports of mine recently.

This will be awesome! I also heard that enabling DWARF v5 for our object
files can easily make debug info size smaller by 20%. Glad that the
kernel can benefit it as well:)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200512200114.64vo5lbl7wk2tzxk%40google.com.
