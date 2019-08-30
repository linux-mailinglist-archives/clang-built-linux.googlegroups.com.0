Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB5EKUXVQKGQE5UYMENI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id B5008A3AED
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 17:49:09 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id c2sf909104ljf.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 08:49:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567180149; cv=pass;
        d=google.com; s=arc-20160816;
        b=hOsfkcXDyJLornf5bgiw84XzAhQ8UKkcURgBGqVLjJGo0GF2ZGWZWMSqb5YJBjZ27Z
         ZyDZbjFJPewnz5dcvgWDeAo4Ibmxo//MAiCmZJPzh1kuEBnaVN9AecRJXOsl+I6v4LT7
         qqWW/MmtSMipo8VHrHK49nXvnwScfxFzAY9rTFOCj3BHzvTFqfhXUk12Fs6zQmG1F7tS
         W+7Mpcc49eJpqdTZa0iH4ddQ22K4I5Ixh6Hy8njeX99W7O3huXfnm4CJJG0+2PEuuxL3
         HpggTPWRxdRTi0utiM2KB6Qk/Yl/jCawCYJ3Hkxr8xBRQY/09m7/c2glyOsmQbU9y+xI
         SEVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=S6fjXsuJwFCs0Lix/VMS/9+WHVI8o7I0kFNzk4RNjck=;
        b=ItCdcjiV60LkdBHa13FtSD4guJp0NYqJoTCPp8vNLBfN0BbLDNo9UbNp9T3TCdnEZr
         8OZHnzDDIdsp1rbdnznF38vp4GNVJV5jQ/htz2DxFC17o8k/bOe4YJELNgx5oJfvcY8i
         9F/OcBiB5WactC3auu3f9XQmdkI5x5fUFCYgFDonGFu6H9OmWoDgxKY15fc/dph5vXQX
         p7gop+/r5w/TmqVlv8ch1bw6FFc6WzM3SEiNSeCXDMUNKzLYT+J90piqsXG+Z7fava2E
         aSKRX3n8Kogk19AYq836SyuA7ubjw+1Br9RlAPN0bGTGyzOYrABmXgTrI5ZUbiZfb7Lc
         Ar8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=TqP98Es7;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S6fjXsuJwFCs0Lix/VMS/9+WHVI8o7I0kFNzk4RNjck=;
        b=HEW/UqUx4VV0UXDUHiWf7Z8sWAGt2cRAZfHjFu3TDfospmS9OifU3WVpUgvXpdpJLC
         6n2npc8PnFt6tvDGVV64gEJcoK5xykRBviHRD0eJCfOcNz73rh9D/CymYDYA65vmfowC
         b/lppgTRnsR0l7ZnARgY0CsONMjIGp3DElkBosWyX+GEKwWBXy6YnNjQzTwThs3v3JOd
         MmgmdMzSs3Qm9e2A9MhJN/R8q5ndOF/V6hQaueeYN7U1vwNUjVK92/NYtXPlfjupJ2JW
         Ir9VuBGwc4SUnmZ7FfuQhCD5CDC7mumaCxHNPCkjtm9fzPnvXI11mmoAbxLXBL+PN3hm
         9kPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S6fjXsuJwFCs0Lix/VMS/9+WHVI8o7I0kFNzk4RNjck=;
        b=ghhLSC9LFsZPcHiuqzTWPXQYnM8OUNoDIpr4bV6wRypeQ9dkWrHrLjg+Qk/D7en02Z
         iJKRC6Fb91/4sfIiZVrkL4cwv8n05ycwCk0s4EhBqKshMLsLLO/w+g61W4d/gtTKZ86Y
         9pnb5AFexfJzX4v/oBcv7gr3aNv2HiMq3FFazjkhD7aeq+imDZ62oqVuFPCjLm4t699e
         aJzA0zSEKNQWcBYsumcZ8/kV72GW2U8TcxUuZ/5Unw6TcnRRGyIrPvL4tEzA78lhnet8
         Ohb8BBzRyr4wcQ7YROSkfbLodAybMGTjXh8kneYNmEsLdn0rNHYD5seSUNpbaMHVswtp
         oNcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUn5jb+I5qDDzBRAlmkZYdtNvOOXWDK+tftSUPUHzi9iEa+lZL7
	9tEBDBZtnvfikYLwTKJWHp8=
X-Google-Smtp-Source: APXvYqzxbqsV3CLLjFdHAlGkAVVZVKnyxQYEe6D3PjU9UlZ41Wi2cxJkfGQZFIrhTHZQ9hQyOa56hA==
X-Received: by 2002:a19:ad0c:: with SMTP id t12mr178938lfc.46.1567180149309;
        Fri, 30 Aug 2019 08:49:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b60e:: with SMTP id r14ls796067ljn.13.gmail; Fri, 30 Aug
 2019 08:49:08 -0700 (PDT)
X-Received: by 2002:a2e:9e86:: with SMTP id f6mr2419262ljk.157.1567180148278;
        Fri, 30 Aug 2019 08:49:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567180148; cv=none;
        d=google.com; s=arc-20160816;
        b=cNPRJlSVpLMiXpjuAUTpkuw2grnzjCStjSvuxL4IaEAW2F0XP1V0mrSBqp0PhoK3xI
         dvFF4+TGXEh3QOGd32AK8hAvGTAWrLGtpCFpU4D8dpE50Q34NVIYicovTApdqfokjK3T
         5NwqRsLtwn5HzgAuBqjPWkMHwFGXrhKC1jpYi3C4vAApJiuXxsGAoknNtyJTZsAomJDU
         baxfA0ZHwNvbwyWeC55rDJPG52c0HnSEZbZjwK0ErowV7jLgQqMXJ2TrZAQzF+tvpW2P
         dGTd0M4gKyOOawrwi0QQPVkUC6/e8w3CpfbqfcTN78CtsofRPqFg6xCHSVdLvAAnq3yd
         adxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vxocWBxPoSE7XWEgraDs2g3LtET7UTFJLMjvpVmaI8A=;
        b=x1jNIGLN5MLloRTQBFI+svmnmAcCgO2qtaTI65p+YK1oEcCe5ogVnM1FuEJb6r5LlY
         RKBe0fz1c101Lf3dWdvKkQ8p6NWbt+sftd6hLvxIdDwQDYvdU/kITPDYTI1ziaFkdlrN
         2VqYupiGqj3aNcLXuVXobc/ZA3ZGlxK12sqsV5RsDvL+/CQ4eWQ0AKtnA1e1TIfxK7Zq
         CvD4XSP1CuZtWAlf28i7wwxmD2RDQ1n6SRAAmr83G7aNIu7ekLCscgDunlKzxhs85Dat
         aVTQ7emhVncbqclLOJje6a24pK/oei9zqlytiqQIsBa+ZL6XCNNoqQ/Mxn91urax/w5V
         ltzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=TqP98Es7;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id d23si376943ljo.5.2019.08.30.08.49.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 08:49:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id u13so5695539lfm.9
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 08:49:08 -0700 (PDT)
X-Received: by 2002:ac2:4835:: with SMTP id 21mr9607720lft.121.1567180147430;
        Fri, 30 Aug 2019 08:49:07 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id r20sm968678lfm.41.2019.08.30.08.49.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 08:49:06 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id q27so5687498lfo.10
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 08:49:06 -0700 (PDT)
X-Received: by 2002:ac2:5976:: with SMTP id h22mr2633464lfp.79.1567180145802;
 Fri, 30 Aug 2019 08:49:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble> <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble> <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
 <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
 <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com> <20190830150208.jyk7tfzznqimc6ow@treble>
In-Reply-To: <20190830150208.jyk7tfzznqimc6ow@treble>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 30 Aug 2019 08:48:49 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgqAcRU99Dp20+ZAux7Mdgbnw5deOguwOjdCJY0eNnSkA@mail.gmail.com>
Message-ID: <CAHk-=wgqAcRU99Dp20+ZAux7Mdgbnw5deOguwOjdCJY0eNnSkA@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>, 
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=TqP98Es7;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Aug 30, 2019 at 8:02 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> For KASAN, the Clang threshold for inserting memset() is *2* consecutive
> writes instead of 17.  Isn't that likely to cause tearing-related
> surprises?

Tearing isn't likely to be a problem.

It's not like memcpy() does byte-by-byte copies. If you pass it a
word-aligned pointer, it will do word-aligned accesses simply for
performance reasons.

Even on x86, where we use "rep movsb", we (a) tend to disable it for
small copies and (b) it turns out that microcode that does the
optimized movsb (which is the only case we use it) probably ends up
doing atomic things anyway. Note the "probably". I don't have
microcode source code, but there are other indications like "we know
it doesn't take interrupts on a byte-per-byte level, only on the
cacheline level".

So it's probably not an issue from a tearing standpoint - but it
worries me because of "this has to be a leaf function" kind of issues
where we may be using individual stores on purpose. We do have things
like that.

               Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgqAcRU99Dp20%2BZAux7Mdgbnw5deOguwOjdCJY0eNnSkA%40mail.gmail.com.
