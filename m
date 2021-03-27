Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBOWD7SBAMGQERYRD2RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id EF77B34B72D
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 13:14:51 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id x197sf7994601pfc.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 05:14:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616847290; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vl+8gC8q3SoNcIUWadtjn/doo241yK7xIRIKV+R1a46My7uMNgOzV/B7+2bdeNY47y
         urIqw38rtqi2VFoWxTmCfi4K3MAsUia+tRjpvNgybh1YLjeTHJkrdeQ4cfr55qtKTJCk
         JIA7FPPePGkn77KdyYxmj9Y4G2mNb0f3z23Ch+ACwagSv2eoB1RwohQnCgDCsS1X0qkO
         hJ57HBT5TzRFrXMgEpuWizjXvfid97+meZWdC8MJ6l6oTXgeEqgs++CIP2gjHZsx9+pc
         PJ5sreN/FbK4yeI7MtgYRPs8W0FCX16gfEicIU1D/DHHVwWEeP7S2cKwq36y4Ne4pe5Z
         kgKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MQxMghUDcI8BXIrxLp8mQGUwBLmUYADbPlTWc9gebss=;
        b=gG+v6omIgQYOpai0O9mhYkipL7IdUhlt568gvNhLMHTx7VCGiS+eQpOG0zZp+UqRAb
         Azv/jChHGEQ0ismAM/QsS+5mCoQv+EkxpySysCH8dbr1R5aw1fBV8fRiKJ8PBbASOUC1
         m2OqHhboC4VJvaG2SA5cdS79SnEy4EtN7YRLrbmwXds8+aA/yCKfTqPax42zOxKNhU45
         vESHBw8Y62h9WHdPtDhjHPJ1BGEUvOsWr4tly9NEgLaw4CxiMHg8YT2mQbhIbQMBU0Qn
         mfTVbGrXaDwDbYE4i2oMrO0JvJ1GzXAE806P2YWtf4URekkqS9EwYMhwCNJTuzkWxMAE
         oC7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bQnjM6kQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MQxMghUDcI8BXIrxLp8mQGUwBLmUYADbPlTWc9gebss=;
        b=HIizCaECR35nBc6OpKk82n2xvAqJnAJ5lACFTYoGiFyNHI8BpsZjK0BaOd/qRr8PnG
         kG+yFrZ5OySrKzEcFCYFBmJ3uWm0am1eK+ocO2HLwsNpBdGUmH+w1YX/f5FcRzmTDvDy
         Z+Nm1pi+HHLUEYqw4U79ssB1cgS8V0ygrQXurwQJOyPD5D52SDaHVtrOY6rhgbcdaNYj
         j6nZi4cI+Jg7+8KjDB5qWF3RHnnHvb1Y6RRmBs3dcsblsCvdj/WMKxujBzFOSTXhzezw
         T1Bq6jzmcA54W2kp9QKerENJnVqtwnVPfvxnPWlvAMT+N70bVcmABErCOQ3XaSKWeHYR
         fkJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MQxMghUDcI8BXIrxLp8mQGUwBLmUYADbPlTWc9gebss=;
        b=US1xcwAIaZPQ3uBwiwM/9PEO2T3VSecFTDm0ieUgZ73hdV8pfM/y6TCMD3hUbsqYwM
         GuRHdTwLZsM0gzB/cXtbgyhQ/f4N+iNt71difI4RHKV1TQoFiw3Gkr84OZFfZbusA6H+
         16NDVCie9CA52fDSvpEXKx1P1cxNty9AXMzykJj4m7IxBxBzhCwEFZetZoQmQBE2sDPY
         yIci7hCw9o7Wvv3xZFdz3qmyi9lN+usxu/t9RqxGEyzqnvJTERP2P2LwcBCKH1BaZ8kR
         sWyyN12EJpiDDfr2g54zdakSjl3l81Vr5be+jetKkRDCygOPOtrf6KSpPnCA0aXyrVqj
         /4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MQxMghUDcI8BXIrxLp8mQGUwBLmUYADbPlTWc9gebss=;
        b=sFXf/yC19KRUA5Vt7pjLaPIp9eMfPxsSmUPfflrkdpDrzdWx+oeMBERg5gRFdVKZXb
         ru77Rl+ph3AFy/eP4emy7RJ1tK+GW9sRu6J8i5qFjdvtdnM7sznzjhqnGJfOxBL8PRva
         1BUNgpA9KHy64gz8U/S67yWqeqkoM0rGDXGMBuhE1MA1NcOoRGTxeoK3mujNRiV+LixE
         Ie9uZUc/U1aabN0v5uojlWCNTGCyn8M7NahVIXBgPTc64REp9FIctW7pr9ydV520Gxfc
         KzVoGt1jX7G7F7lDybDi1o1hmokuIryvjWz6lIYjpziOSjMAS7rRkZyVtjrwqgURibnx
         i0tQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53190D9b5ntu2C76xDqi/8i2LrmE/bQ97S8qdf7Cy+WGvZucjKNe
	LrQDZBDfEjTDJcbspHiCUCs=
X-Google-Smtp-Source: ABdhPJy1ow8kxASiyQChjBrvfCOiqfjt6cVkdB2Awl2FmwQ+t8zvtwFG2E0eqFU/UVEJunYsEdE/tg==
X-Received: by 2002:a17:90a:b311:: with SMTP id d17mr18570063pjr.228.1616847290393;
        Sat, 27 Mar 2021 05:14:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:da86:: with SMTP id j6ls6377910plx.8.gmail; Sat, 27
 Mar 2021 05:14:49 -0700 (PDT)
X-Received: by 2002:a17:90a:f82:: with SMTP id 2mr18647076pjz.196.1616847289781;
        Sat, 27 Mar 2021 05:14:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616847289; cv=none;
        d=google.com; s=arc-20160816;
        b=ZYwlChDxvK5T94hZQGOxZMoPPHUpeJ+3KPYrt1biijNWvTll/rXTcsKfB5UFwFqyOm
         Q51e0dSIW0TgWjBWQRoPtl2mV2WSjpQ/av68IqGALSbsKhXShQYXP1MRrNdKLOhkoaGR
         +dWLOnb8BMdDOMnDHwjvUsqxxtxFOXq0BJp+ZJMsTPn4suceN/qQFVYCg+q40SHWBn36
         GuXFsD4cUUh6hl7Y5R9E0vHWkUdYiQD8GOKmC+CQCNIOHOcxQMlDKV1Ym1nIzruIn16z
         wtL0kMiuhXfcuZiEep2UZYnGtAiM7v7QwYDOAarObxRn8oLkdhN9Fya/boQsjobEA3H2
         0GCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DLa8HEc0l89eMa5B39w/lF+9GV+mSCKRkSDOiAznpG8=;
        b=Wwjtg2g3HtWVah7obzYURQToTXk5cKwGkb/m6ZKfICu/Bz0i4FITJBHepbKTFNozVS
         oNVP4KHVsWfkU0EAPwmruLpGobH1imGheVmlQHKeDEK2zEoJbcOm23h9+2GrecwE7dP0
         zZOQzehoNcnrJRp0MU34lMlEAa0bKeiqSfV2IWdEP6oG2/SrbWzMPuLqI2iFyo/OQVRb
         y8a8zZTeAl3U5PbGx++5odM7mV30d6ZLMqJTOR3JxlJqCSbrnoFhzv1l5LepqMeL6RrG
         mwQj+KbGcE6dl3h9eb2QIZp9P3LqZj0G+CDB8zItNJrwPKsZin5pnYha+hljt5RC/KjW
         fPIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bQnjM6kQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id nv12si428018pjb.3.2021.03.27.05.14.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Mar 2021 05:14:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id u2so7343895ilk.1
        for <clang-built-linux@googlegroups.com>; Sat, 27 Mar 2021 05:14:49 -0700 (PDT)
X-Received: by 2002:a92:d78f:: with SMTP id d15mr13363975iln.112.1616847289274;
 Sat, 27 Mar 2021 05:14:49 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000064b16905be4e0722@google.com> <CA+icZUXC2YTR356yYhLDjeh6ibZ9OAY6o1U1keygPdWHWE2chg@mail.gmail.com>
 <CABCJKucPFP1ou2FGQfH8=2WsL03Z-UF01LdJx5Zr9RN6=VgZ4A@mail.gmail.com>
In-Reply-To: <CABCJKucPFP1ou2FGQfH8=2WsL03Z-UF01LdJx5Zr9RN6=VgZ4A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 27 Mar 2021 13:14:13 +0100
Message-ID: <CA+icZUX8FVQwU_jQ_QKWgOCTALJTT-RN6hyVgyc+LTwWgYmQYg@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - March 24, 2021
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, android-llvm@google.com, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bQnjM6kQ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Mar 25, 2021 at 3:58 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Thu, Mar 25, 2021 at 1:48 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Mar 24, 2021 at 9:20 PM ndesaulniers via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > http://go/clang-built-linux-notes
> > > Meeting: Hangouts Meet
> > >
> > > March 24, 2021
> > >
> > > LLVM_IAS=1 ARCH=arm landing in Android
> > >
> > > Probably going to skip 4.19.y, one last assembler bug won't be ready in time, 27 kernel backports required.
> > >
> > > https://reviews.llvm.org/D98916
> > > https://lore.kernel.org/stable/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-us.net/
> > > https://lore.kernel.org/stable/CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com/
> > >
> > > 32b PPC BE builds spun down in CI
> > >
> > > https://github.com/ClangBuiltLinux/continuous-integration2/pull/111
> > > https://github.com/ClangBuiltLinux/linux/issues/1292
> > > https://bugs.llvm.org/show_bug.cgi?id=49610
> > >
> > > Riscv crash on -next, requires earlycon to get more info (or GDB)
> > > CFI patches need help review+test
> > >
> > > V3: https://lore.kernel.org/lkml/20210323203946.2159693-1-samitolvanen@google.com/
> > >
> >
> > Thanks for the report, Nick.
> >
> > I am a bit astonished that ClanBuiltLinux Mailing-list was not CCed on this.
> > Can you Nick or Sami comment on this?
>
> Ah, that was an oversight on my part. I'll cc ClangBuiltLinux for the
> next versions.
>

No problem.
Please CC me explicitly as I am not subscribed to LKML.

> > Personally, I am interested in the x86-64 part of Clang-CFI which I am
> > testing for a long time successfully.
> > What is the plan for this?
>
> I'll focus on that after arm64.
>

OK.
What is missing/trouble-maker/needs-to-be-sorted-out/etc. for clang-cfi/x86-64?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX8FVQwU_jQ_QKWgOCTALJTT-RN6hyVgyc%2BLTwWgYmQYg%40mail.gmail.com.
