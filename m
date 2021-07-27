Return-Path: <clang-built-linux+bncBCZ3LGVOUAFBBAPXQCEAMGQEECL46AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 817DD3D7B7D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 18:59:46 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id z10-20020adfdf8a0000b02901536d17cd63sf3525371wrl.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 09:59:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627405186; cv=pass;
        d=google.com; s=arc-20160816;
        b=NDHlHiIEeAJTYeJW+Zq+aFL1H+3zsLvI1XrqHVfSJjjB+N+l4yKY5QYWVxzGYZ3ehi
         NVEIfL0CrPBLZNJ8TrZZ3uRW3fxbYgHRoAbELu3dYf+Dh2+TC0qUt8HK9Z9xAD93K8zy
         Jn3KD4vBpo1fpANfgCku360gGf8NkCZvnkrTZQuhXkXgXAAQ3LQcXm7rhgshRph4iCgZ
         0krT8LZ1iUpdBmIFe96F+IcqvEKTrcYufHMfjMB20I6sDPSi0+JIGjmobx2MucG/8CSE
         E7G0rMPje5adfUJvdhb0K5WcQQxhW0i2/h1CbHT55BY6bs0+GAc26ki9elkiABRyCZl8
         otwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=0rONN75DV4VR8HWhPpwykJH+0jOIxoVKgp56kAoE+lU=;
        b=wIcZIZaPIK8b1oJ38lMCOpRtbzprNP6/W/KPc6JrJMjX0+MSrOmTj6qkLbQHgQt8s7
         LysKbCJ3AkVrR2KWWXh0rhC9t7cL37RCY+bXe3skAqTmCDbsD4bwLNv0XgdYCO2vuPMY
         poRRc9u+ivM0KQQfBeEFEi8gAacaicCDY1sAav0VdZO2+ryzMZQGDJ+8CDoBIzZnPnYm
         hnSbQaIshHKxpaM1Jci8lbEXFhc/sOIVlaX4z10Q8BWtgTwsgi4wt54S8jg7bllPO3SU
         ehGBTjFISxf+BEIqPE5S8Peylqf+PFBMWmK2zJdk3xwusfDZ71K+E/uaMNlXbeKlXK6V
         //qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sHVfj6ot;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0rONN75DV4VR8HWhPpwykJH+0jOIxoVKgp56kAoE+lU=;
        b=VtzKYzEINRZ2SzbmorZRQ2K0JzN33ZikueGOKt+3d69mKPR7dW09b23EekQswxT5MW
         pRAQqBRtQ2pKWjHjyDsIqf+lL+X8hNYsifCfiDAL5zzEAfY5UyuPQHjPOm6OP6idfwIG
         5yZCailbFrvCSD6llZ9LBogAEZxqgqCCrAl3GtDTJ7p9E0ocg25dpMoBIbTdGuK6wTbm
         gk7W2YyYjlgnZR3o/kjo8nPqJy9Gc0MupVzSw5s0z+MBAwLC/QyUT6YhnQ4U2NxQuCXv
         FQYo/YlORqSvGRB3dWJcd0GorX7jBIcgj2gudxsIvH7ENlwBeioggQLfJpbOOHhtrpNX
         3rvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0rONN75DV4VR8HWhPpwykJH+0jOIxoVKgp56kAoE+lU=;
        b=nBm8Dp54ZQZXrolpkhP907tAqkkR/uymzXhZhm77FwYm3FOGCmBCGHtuYBhbQff9Gx
         mOv/Cv3jHvimrjnsLoD0JjOYwlYujkUz7J8DORUQp0IcMa39x//WZiYebyZhhMNvfb6T
         2G3+LplsLpdj+Mxn9lTRwu0s0K/z6I1SZI/lgxIyc5dWznABvJAs/hIXS7fDmEaH9luE
         TaNj7XjOigM4BO9Ok7t1RIYtkWDAG8lKaDBkjar2S0rN39Xc1uQJMJaPrS1lyvp/Svyg
         nVjLgopglkMJxSBKBQ1kMz9v4l/8LqPzLN3gZoMTXcBE7SsCwVrH+MIw7tSlW8j2np6E
         si4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0rONN75DV4VR8HWhPpwykJH+0jOIxoVKgp56kAoE+lU=;
        b=Py3AcKyUZ+7xUv7iovqcH1mB/rgiyOjF5dBF0b3B2Ito5MCDyDf8zVXe/hydUMAhai
         pVVizscgCOSf3NkDt/e2qGt/aIdfdksgnYy5SUZ4gdVu3qUdXwhEXXkOubMV9NZlgwuh
         34oaaaDhP/kxa+et5FO/hzY2UqMqj+S9oN4mGq05BwOoy/DcieXkT6mJbF2zyBaKVP4x
         tM2VJ7QZ53bxcOaRwPocLX8ShZRI8aZmyeeKL6JTJ9YmFuCpJY4uyhmgY56EX2CfDGk9
         erq0St2orS8jpisuoxUqeq5O3bUUxthQoy+6kKaUf5mX2nRB79oMHEsN+3RsT23cGpQT
         e1+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531d1HU3r4jEgtb5hb3hnxK32dpMivU7DW1ROchMlXHhBCKiBrvz
	yEQhTxsv/xMyB6u/my3/pk0=
X-Google-Smtp-Source: ABdhPJxVpvu21QDkbDGLU9TQmJLWnSU7e9ZuGrQPRQjDEBi460nF0BAsf3jgYpc8AuBWmuduJ4CShw==
X-Received: by 2002:adf:d1c7:: with SMTP id b7mr18222657wrd.108.1627405186267;
        Tue, 27 Jul 2021 09:59:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:790c:: with SMTP id l12ls30171wme.0.experimental-gmail;
 Tue, 27 Jul 2021 09:59:45 -0700 (PDT)
X-Received: by 2002:a05:600c:290:: with SMTP id 16mr4308641wmk.71.1627405185112;
        Tue, 27 Jul 2021 09:59:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627405185; cv=none;
        d=google.com; s=arc-20160816;
        b=Bkk9Mkhzcra9ug6HdiQwl0L6XDKt6Ksd4/cg3uq85qdBTx/v7Lj56i+owri38UiJlc
         snoNO0gSqX9h2pg2PEFkRWY6MVv4jmEGgy+NC6IChZZ0hKVhfqQH2IfRIJ4Q1qgrpaa1
         Kowm/QVf2BNNFKhYA8xTiuCPwm7BwiqUOVvNAGmcixPgq+iwJI4l0Dl0eCeKQZiStM5k
         Q3nMoOJIxiJFXuu1+4WRrsNZ1x6nG1FYmSx4Ql02JpkYnhVXG3SV/1BbKPQgjToEPrzr
         r01u4KEwmHf0g0Tbaj2zBQEGKcurka7nLMFkvesGjYpDis1lj+EG2IDBkxNfZQkPkE42
         lJUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=06umT0zgrhbjqNYxTt/dijb316TtIb66gqZamU5hdxM=;
        b=BtxIznRkXVBNT1TpyB2S88jT1gC2rSx5seGRytwacKL/RvVJ2gZkq0sNVy8m7CLpev
         +6uI2+e/bbiS3jDggBBUHNf0e3kXlsjMv+wnqZVV9cUkImw8a5rcsXAP2ztpUOG1Pu2x
         ZvKi3JpBJ6vhe8VGXYDfoF3VoEcTxVpMvUvYuk9p9/qwxisPlUO5TqPCYDfuBb4h2rp9
         PTFXycSWWOv5Ne9rIirfDc3PjaWrIHo8TWC7hIQ6WLkZaI6DAkeOzMYDy38u8QLuSGXc
         BBZaK/zWWfDYSTN2OAhu/btuyRX6IcIVmAzfmx/AIVE/zBaAtOF97eSZ6YuDCIMG6adI
         KHkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sHVfj6ot;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id m33si95678wms.0.2021.07.27.09.59.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 09:59:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Received: by mail-ej1-x62b.google.com with SMTP id gs8so9698107ejc.13
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 09:59:45 -0700 (PDT)
X-Received: by 2002:a17:906:4ad9:: with SMTP id u25mr8141470ejt.106.1627405184530;
        Tue, 27 Jul 2021 09:59:44 -0700 (PDT)
Received: from pswork ([62.96.250.75])
        by smtp.gmail.com with ESMTPSA id p18sm1465434edu.8.2021.07.27.09.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 09:59:44 -0700 (PDT)
Date: Tue, 27 Jul 2021 18:59:43 +0200
From: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
	Padmanabha Srinivasaiah <padmanabha.srinivasaiah@harman.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] tracing/syscalls: Clang cfi enable syscall events
Message-ID: <20210727165943.GA21786@pswork>
References: <20210720221541.16164-1-padmanabha.srinivasaiah@harman.com>
 <CABCJKuecCch5v32GJ8Bt9wEJOWtp2aYanRT7qdrD6BHx5qDRNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKuecCch5v32GJ8Bt9wEJOWtp2aYanRT7qdrD6BHx5qDRNw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: treasure4paddy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sHVfj6ot;       spf=pass
 (google.com: domain of treasure4paddy@gmail.com designates
 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
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

On Mon, Jul 26, 2021 at 08:17:45AM -0700, Sami Tolvanen wrote:
> Hi,
> 
> On Tue, Jul 20, 2021 at 3:16 PM <treasure4paddy@gmail.com> wrote:
> >
> > From: Padmanabha Srinivasaiah <padmanabha.srinivasaiah@harman.com>
> >
> > With clang cfi syscall symbols are appended with <syscall>.cfi_jt,
> > hence syscall tracer can not find corresponding syscall name.
> > And results in no syscall ftrace events with CFI.
> >
> > To fix this issue, this introduces custom cleanup_syscall_symbol_name()
> > to strip postfix ".cfi_jt" before comparing syscall and symbol name.
> >
> > Signed-off-by: Padmanabha Srinivasaiah <padmanabha.srinivasaiah@harman.com>
> > ---
> >  kernel/trace/trace_syscalls.c | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> >
> > diff --git a/kernel/trace/trace_syscalls.c b/kernel/trace/trace_syscalls.c
> > index 8bfcd3b09422..dbc253fea34d 100644
> > --- a/kernel/trace/trace_syscalls.c
> > +++ b/kernel/trace/trace_syscalls.c
> > @@ -79,6 +79,27 @@ trace_get_syscall_nr(struct task_struct *task, struct pt_regs *regs)
> >  }
> >  #endif /* ARCH_TRACE_IGNORE_COMPAT_SYSCALLS */
> >
> > +#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
> > +/*
> > + * For a syscall symbol, clang generated non-canonical local jump tables
> > + * will have entry as <syscall>.cfi_jt and address of this entry
> > + * will be used to replace references to the syscall symbol.
> > + * so we will strip the postfix from appended symbol name.
> > + */
> > +static inline bool cleanup_syscall_symbol_name(char *s)
> > +{
> > +       char *res;
> > +
> > +       res = strrchr(s, '.');
> > +       if (res)
> > +               *res = '\0';
> > +
> > +       return res != NULL;
> > +}
> > +#else
> > +static inline bool cleanup_syscall_symbol_name(char *s) { return false; }
> > +#endif
> > +
> >  static __init struct syscall_metadata *
> >  find_syscall_meta(unsigned long syscall)
> >  {
> > @@ -90,6 +111,7 @@ find_syscall_meta(unsigned long syscall)
> >         start = __start_syscalls_metadata;
> >         stop = __stop_syscalls_metadata;
> >         kallsyms_lookup(syscall, NULL, NULL, NULL, str);
> > +       cleanup_syscall_symbol_name(str);
> 
> Shouldn't this happen in the kallsyms code instead? We already have
> code there to clean up function names, and it seems like we should
> just strip the postfix there before returning the name.
> 
> Sami

Thanks Sami for the input, yes have regenrated patch:
https://lore.kernel.org/lkml/20210727140618.19130-1-treasure4paddy@gmail.com/T/#u

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727165943.GA21786%40pswork.
