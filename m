Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHMNUPYQKGQEPQXGDAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id D882C145E55
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jan 2020 23:03:10 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id z3sf517663oto.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jan 2020 14:03:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579730589; cv=pass;
        d=google.com; s=arc-20160816;
        b=H/RKE+TaEuMavpq17iaNw383dJ5pCqXFkYTkaq81tsxh/LKLyUVHrKXCiEqXYf8PFR
         nfpFx3gb/VyoEqtWBRmTsw4NfOgAJfBMRArg0YR+vhR8bFqHKDEuz85v04535Cpo9v55
         xsZboJpfigPM8byY0dk99wUZ4qcY1XCZRjZSNp8SIeRT1suGBZtLhQ9qpPhtzng1TXiJ
         TpRgNp88CxDsBDlQkUXyVumlqWcf22CPlJqhqsVS5Q3E0+8S/NAcUHsDybtgBsTXcMEu
         t4CujO7brvFapmLTO5spsrYCKT0EIb1JFYup01v90gwsfZj5ezjKx9iNzPCcqsHnv61F
         C/eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/wvt2vbwm7JAkzGfCzVN4dp8S2vB9OeawsPEJwhbnoc=;
        b=m0iOhqD5HW3sABJfJdtUPAlULSqi3+j8epqQ0ChhDhl2VneFmXkQ99IAUaVmQPf1Y6
         NKCB1Ub3wwcMiV1dHI0/CcVm1NW3UiEPSBIzEOUzVEEJMqtyJ/mV65YDxgDX5MKfs9j5
         fCtxG6vt80nObdNrfCr4Dnu9AF8+iTnMDWsbt6wFcUe6SwcFajGl+xfEGIqXczaOKm8k
         xbXyfPKGtEm/g5XdQcA1VQam6dBkSYRMxStOm1aJ28kngUJY0iRdWsc4MSLwYd3uA5bU
         g2kbWyO0cF4K66bCI3D66xj/SLtvq5CPTS6nP9V6vzO5StD5+efClnoiGHW4KaJsmo9D
         Ussw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=viP4HXel;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/wvt2vbwm7JAkzGfCzVN4dp8S2vB9OeawsPEJwhbnoc=;
        b=mHrJyYbsb525UloYvdXFX5/5+Ot19dZIB/91rSN4ZEwMWUnIyzZGnU3/oNSfaTqapE
         Pjye+mB1UGi/vONvWrOyIOM8cvNQSFTXfxkcMWhHBBPU9chw3nKbO5P/9fkvqfS4pTOx
         iw/f6VFGxVkLetNcDptkVUL6KFvgV2ne9FJRLjoWO9Jdhh5UmsKN8sLth/8iWGK74TXy
         BLHPReIIS0fje3gJlNcTkuxGLHL/NSz152rsPDX4KmVmgMjqf3TKsPyyY5Kh7zvMCSnI
         M39Nj3lyAbk0bHz/QgYZpZ97wCr3Wu8qejNlfTK+9r6XkUm2jiGdd/uO7I3U0cM/rzrI
         F84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/wvt2vbwm7JAkzGfCzVN4dp8S2vB9OeawsPEJwhbnoc=;
        b=Z+25YUx+V/hRnId1htUHwwSBnS4Iux3VfajKSYvjje/uzbUpA7jTFdRkSNM+Aqj7Ct
         zLIgRBYGlsUeboJni5+eaX6LKbaC5SVvpCKaSk0culzw2ncZ70dyFbCo3XssqgFnUWgZ
         ZD6HQKpAPDcpQwlb7KHuhiaVwzglIIBIjpahea1uffKAkxIqsnOViesFW7ONGGBpIwf7
         tAblQvHJLsNJ9N0zZfi0kz/+F3H09FcZqJtAkA556VaXlAatNjvvb0Y61T4Q7ARYslbd
         NbROhn5h6HvJ/0AMyUWHnsh6Gmf1fY2CarrpHiVzQFNJN/yhY6qvxktEduS4hyRJKEZV
         FhSQ==
X-Gm-Message-State: APjAAAWM7rUBcMdtHrgI4h2dbGK9gG8Jape7UC+KXjyjxRZFcsXhed3R
	oCOxn8g+ALbMgYiFUBBknXo=
X-Google-Smtp-Source: APXvYqwTYwIXnFB5PmJW9iF8jTafJmgx8XTSR/R95Hn6WfEdCGXxoV/zcJC1Y5a7JfYa/ayVhy66aQ==
X-Received: by 2002:a9d:588d:: with SMTP id x13mr8611048otg.6.1579730589505;
        Wed, 22 Jan 2020 14:03:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7198:: with SMTP id o24ls617059otj.10.gmail; Wed, 22 Jan
 2020 14:03:09 -0800 (PST)
X-Received: by 2002:a9d:6005:: with SMTP id h5mr9622120otj.153.1579730589039;
        Wed, 22 Jan 2020 14:03:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579730589; cv=none;
        d=google.com; s=arc-20160816;
        b=xx6ANXo2/yEDhW/hxTsOVFi9oYWl+G9K8NMsDOJnbFsmsB92lOiDZ0NG0ojPNSUZY9
         FXhYEc7EAEzlOc/E4DcaTE8ubrq86v5y4+9P+2Iy9QMa9qkJ45jYzQwXblwnCLaPPk2Q
         gjl9yf0BXLw5WrKUgLgb6wxPaHXxFJp+rmHTHJZmoRGE80IIoshzO83rHE1endkVFJTl
         1SaWmk9Bqg/dT10zodoG4CiwSJmbJIKM8AqC6GpqaN7vMgCc2xbJqDO7CId77a6pcDPw
         NA9YofKvakFM5MSgW+WBPVOm/g5CmaGIfuUmbEwto1kzoGr1PP4Dceeec9j6jHb+YAu7
         0gzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aD33Q/mZRZaaOiToEisbdHdsPM904cfQKc4In2Wz6nw=;
        b=gjQ8u6dWqI7XvNow7K7blW7qry4J8kltN8VL6tyd8w8/b4jkS+mmA0J7E/6kchmTk2
         7Bq2kJUFdpM0U9NXIORAu/wWT1opC+LuiGnvHJlEzgxFtzt7Iw3K04LPOfM1S9NerWmJ
         fC0ivV7Tyn7Fm8uqmJRT2ODq8jfk/n6GDniPtR9Aqh+BsYorXFMq5Oxn+QKUQ3LREv6q
         Ak4n5Cy+1NS1+V0iAltEqv4sExPUPPcMqQm5SzQ5EVFhOCoR7pgnT3NnalMuGXPseXYc
         3PK538xiJ/+RPCjWdgz2Tx5VZOGJBaSf1+sfFmiZAq2u5Ow4DO8Wzx7Row+k21axlUCM
         RdsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=viP4HXel;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c23si2021oto.4.2020.01.22.14.03.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2020 14:03:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id p14so481336pfn.4
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jan 2020 14:03:08 -0800 (PST)
X-Received: by 2002:a63:590e:: with SMTP id n14mr406572pgb.10.1579730587873;
 Wed, 22 Jan 2020 14:03:07 -0800 (PST)
MIME-Version: 1.0
References: <202001230452.x1ZgvXCx%lkp@intel.com>
In-Reply-To: <202001230452.x1ZgvXCx%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 22 Jan 2020 14:02:56 -0800
Message-ID: <CAKwvOdk50vX+MXFYTt1Y3uQ_p2ihLjQtUR+s94nooaP1sFeGXA@mail.gmail.com>
Subject: Re: [trace:ftrace/core 29/38] kernel/trace/trace.c:3232:6: warning:
 variable 'buffer' is used uninitialized whenever 'if' condition is true
To: Steven Rostedt <rostedt@goodmis.org>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=viP4HXel;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

+Steven, looks legit, can you please take a look?

On Wed, Jan 22, 2020 at 12:40 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: "Steven Rostedt (VMware)" <rostedt@goodmis.org>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git ftrace/core
> head:   532f49a6f19a153e202b5a174f8556fd50c36dd4
> commit: 82d1b8158c9a77c2c9b04c4af22fd62f3686cd9d [29/38] tracing: Allow trace_printk() to nest in other tracing code
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 7b771ed448487705237868f705da17b40c6bfe82)
> reproduce:
>         git checkout 82d1b8158c9a77c2c9b04c4af22fd62f3686cd9d
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> kernel/trace/trace.c:3232:6: warning: variable 'buffer' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (len > TRACE_BUF_SIZE/sizeof(int) || len < 0)
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    kernel/trace/trace.c:3254:23: note: uninitialized use occurs here
>            ring_buffer_nest_end(buffer);
>                                 ^~~~~~
>    kernel/trace/trace.c:3232:2: note: remove the 'if' if its condition is always false
>            if (len > TRACE_BUF_SIZE/sizeof(int) || len < 0)
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> kernel/trace/trace.c:3232:6: warning: variable 'buffer' is used uninitialized whenever '||' condition is true [-Wsometimes-uninitialized]
>            if (len > TRACE_BUF_SIZE/sizeof(int) || len < 0)
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    kernel/trace/trace.c:3254:23: note: uninitialized use occurs here
>            ring_buffer_nest_end(buffer);
>                                 ^~~~~~
>    kernel/trace/trace.c:3232:6: note: remove the '||' if its condition is always false
>            if (len > TRACE_BUF_SIZE/sizeof(int) || len < 0)
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    kernel/trace/trace.c:3208:29: note: initialize the variable 'buffer' to silence this warning
>            struct trace_buffer *buffer;
>                                       ^
>                                        = NULL
>    2 warnings generated.
>
> vim +3232 kernel/trace/trace.c
>
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3197
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3198  /**
> 48ead02030f849 Frederic Weisbecker      2009-03-12  3199   * trace_vbprintk - write binary msg to tracing buffer
> c68c9ec1c52e5b Jakub Kicinski           2019-08-27  3200   * @ip:    The address of the caller
> c68c9ec1c52e5b Jakub Kicinski           2019-08-27  3201   * @fmt:   The string format to write to the buffer
> c68c9ec1c52e5b Jakub Kicinski           2019-08-27  3202   * @args:  Arguments for @fmt
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3203   */
> 40ce74f19c2807 Steven Rostedt           2009-03-19  3204  int trace_vbprintk(unsigned long ip, const char *fmt, va_list args)
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3205  {
> 2425bcb9240f8c Steven Rostedt (Red Hat  2015-05-05  3206)       struct trace_event_call *call = &event_bprint;
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3207        struct ring_buffer_event *event;
> 13292494379f92 Steven Rostedt (VMware   2019-12-13  3208)       struct trace_buffer *buffer;
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3209        struct trace_array *tr = &global_trace;
> 48ead02030f849 Frederic Weisbecker      2009-03-12  3210        struct bprint_entry *entry;
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3211        unsigned long flags;
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3212        char *tbuffer;
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3213        int len = 0, size, pc;
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3214
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3215        if (unlikely(tracing_selftest_running || tracing_disabled))
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3216                return 0;
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3217
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3218        /* Don't pollute graph traces with trace_vprintk internals */
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3219        pause_graph_tracing();
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3220
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3221        pc = preempt_count();
> 5168ae50a66e3f Steven Rostedt           2010-06-03  3222        preempt_disable_notrace();
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3223
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3224        tbuffer = get_trace_buf();
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3225        if (!tbuffer) {
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3226                len = 0;
> e2ace001176dc9 Andy Lutomirski          2016-05-26  3227                goto out_nobuffer;
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3228        }
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3229
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3230        len = vbin_printf((u32 *)tbuffer, TRACE_BUF_SIZE/sizeof(int), fmt, args);
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3231
> 07d777fe8c3985 Steven Rostedt           2011-09-22 @3232        if (len > TRACE_BUF_SIZE/sizeof(int) || len < 0)
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3233                goto out;

^ should probably `goto out_nobuffer;` unless `put_trace_buf()` needs
to be called. Maybe there's another label needed?

> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3234
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3235        local_save_flags(flags);
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3236        size = sizeof(*entry) + sizeof(u32) * len;
> 1c5eb4481e0151 Steven Rostedt (VMware   2020-01-09  3237)       buffer = tr->array_buffer.buffer;
> 82d1b8158c9a77 Steven Rostedt (VMware   2020-01-16  3238)       ring_buffer_nest_start(buffer);
> 3e9a8aadca4807 Steven Rostedt (Red Hat  2016-11-23  3239)       event = __trace_buffer_lock_reserve(buffer, TRACE_BPRINT, size,
> e77405ad80f539 Steven Rostedt           2009-09-02  3240                                            flags, pc);
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3241        if (!event)
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3242                goto out;
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3243        entry = ring_buffer_event_data(event);
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3244        entry->ip                       = ip;
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3245        entry->fmt                      = fmt;
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3246
> 07d777fe8c3985 Steven Rostedt           2011-09-22  3247        memcpy(entry->buf, tbuffer, sizeof(u32) * len);
> f306cc82a93d6b Tom Zanussi              2013-10-24  3248        if (!call_filter_check_discard(call, entry, buffer, event)) {
> 7ffbd48d5cab22 Steven Rostedt           2012-10-11  3249                __buffer_unlock_commit(buffer, event);
> 2d34f48955158c Steven Rostedt (Red Hat  2015-09-30  3250)               ftrace_trace_stack(tr, buffer, flags, 6, pc, NULL);
> d931369b74b3d6 Steven Rostedt           2010-01-06  3251        }
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3252
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3253  out:
> 82d1b8158c9a77 Steven Rostedt (VMware   2020-01-16  3254)       ring_buffer_nest_end(buffer);
> e2ace001176dc9 Andy Lutomirski          2016-05-26  3255        put_trace_buf();
> e2ace001176dc9 Andy Lutomirski          2016-05-26  3256
> e2ace001176dc9 Andy Lutomirski          2016-05-26  3257  out_nobuffer:
> 5168ae50a66e3f Steven Rostedt           2010-06-03  3258        preempt_enable_notrace();
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3259        unpause_graph_tracing();
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3260
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3261        return len;
> 769b0441f438c4 Frederic Weisbecker      2009-03-06  3262  }
> 48ead02030f849 Frederic Weisbecker      2009-03-12  3263  EXPORT_SYMBOL_GPL(trace_vbprintk);
> 48ead02030f849 Frederic Weisbecker      2009-03-12  3264
>
> :::::: The code at line 3232 was first introduced by commit
> :::::: 07d777fe8c3985bc83428c2866713c2d1b3d4129 tracing: Add percpu buffers for trace_printk()
>
> :::::: TO: Steven Rostedt <srostedt@redhat.com>
> :::::: CC: Steven Rostedt <rostedt@goodmis.org>
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk50vX%2BMXFYTt1Y3uQ_p2ihLjQtUR%2Bs94nooaP1sFeGXA%40mail.gmail.com.
