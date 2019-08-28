Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBYWATLVQKGQELFWK77I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 505A3A0677
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 17:40:19 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id 18sf115355iof.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 08:40:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567006818; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXV5KBC0xo2ZMfA6n1CB4vugoTKhZcaKvTl2Y6bKtz07FAdrZNPBTa5rYqY0yKeGgO
         0x13SOZ9u9Zd6gSZZrNzOLL3maBkL5oV3lkwBkFcQGoNe+51TyneUiLpBUdtmr9dd/zn
         DA8+2s0dxA0qrFMKCCXFY5xhoV+w1Eq1Rb0wYWRV5PxfWjSRUxOU0L4BYmOU6YfPFKfG
         V22ziqJedaFHR7OwwQA8SVMHzzEi7JuvuSVPqKdGOQ8HBKNerhZF9J742FXpD+Mzq/jv
         xcNG1OzeoWtEwsISsJ3w/362B3WmW+UAIxbmfxpWE3+aEXJMHpZlab11ToFOx+NdmHRZ
         lREg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Q2ROpCFEuBBD5xatQ/CcuzWgAZh3DFieiMVQKEYIIDQ=;
        b=jnTSy6DBAGgUUf8EdERGV4G2EXbdDSnhsNtT7EsIORZ6H9XbQNlaLFOoxAWHftG6UR
         pz4f7oyZEfWNkkYRhY3V0BxAK/PwkSOHf8KODhy6lGF045inDhs5XBIwpee3xAVmXl3n
         r96lGdEXBjdGtwFQU05X0dvVLyUKongSfYXfu1J0fZNbx5WusRRJaMEPapBouEiJ9G7Y
         t8Hpv2+4KoYJwyLVrRV3SUdIw0wGQfIuWHEKjwfS08Tfrz1gn44+F7N/ltY/HK10b1CD
         tAMoadHq/BOXBLon84DJ14/lyJLmREL7XYZW3s8m92Kx8t2qsqn7gh7kRflQru1dD4nl
         OziQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2ROpCFEuBBD5xatQ/CcuzWgAZh3DFieiMVQKEYIIDQ=;
        b=NYOI9UrqZ4MzJzhTaFid11Ih4P2OQ20pHh8gPKq1c2aDurHLvGRw+ovw0ydDfg8KPU
         dcM4303eLR6mTfBXEAWmojswvtnoTde3W8InwdMIKTzWNW4mNOWPCctz52a5MBB/3L8j
         T1JjdwjLbMf6Cw7p6/HnwMMB6OSr3oUmKcoXdYY9IXvsKanCyY9Ah4XX2AejE+RwiBZ/
         h0lif5m1Yz4luaR+WlukEfk6YS7QMQGBxPFOT8kE5sbL57CLI8v6RMgZCwYaY6hqRRRC
         N4wwBDG/Qpxjmcp8JWlfL5pF8dVDjDt1E8+mo0ALghXz27taaAhfS/3sOkiKVR15+71k
         sjXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2ROpCFEuBBD5xatQ/CcuzWgAZh3DFieiMVQKEYIIDQ=;
        b=QI6t6XzZ3laxOPSCNgyoV3qSJc3V6J0He7AG84xc4hzr35Eab7OOut5PlrpGH4hT5F
         Q8FeKMS5OtFpUdZqbb5AGJbCqTIA+HmNzcv1clR/j++xetTMZbXt7jG5NuYcLljXSlf9
         TGjnzta8EgQKJGRR3rhlxia3+0MDpblCGcBGBt5pAqhG7MCE7RMVEiKgUHNglaFxlF41
         VV8l0ZvWeLSRxJsn+9qP/ucbZH6+0EmHcO4IOHFr0+ZFubdRzL0UbVu8f1e8sWXcDQe7
         RO+c+ReWF6sAfx5Rj/QalhOho2CV3zrgE2tCEap9XTO1BPl4Yx7KnvmBB65K2vJU4tbK
         0Kzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVS4v04QMjeTJORjS1BBJ/T6QK2kGuuGvBrxOkw/D1i8x7u7L8F
	9Iz1lS1/d5MXdP1rzF4qNm0=
X-Google-Smtp-Source: APXvYqy5fj1mzn3cgf9vCICURBZmi66zQaIXYjHItlk5DXW7i2S8e3LAIxHfzIKle1n7qMt0lIC2MQ==
X-Received: by 2002:a6b:720e:: with SMTP id n14mr1252312ioc.139.1567006818233;
        Wed, 28 Aug 2019 08:40:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b715:: with SMTP id h21ls932275iof.12.gmail; Wed, 28 Aug
 2019 08:40:17 -0700 (PDT)
X-Received: by 2002:a5d:9f50:: with SMTP id u16mr5167040iot.110.1567006817919;
        Wed, 28 Aug 2019 08:40:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567006817; cv=none;
        d=google.com; s=arc-20160816;
        b=cgUSZ3TMn0jPAQKfMiBE28FL5J46+RQGg+rY10oIgQ4yfsqja5ICqOJ1nRm4T0mQja
         kHDWMWwtB2yExIUQbBU1kQVd/cqfZJFkbQ2x8GEwd+CRm1kCtnfuVzH5b5KW+keXTMol
         FmJ+5QuNKaAHPzMV7RD7ZHjTfnjEXwH+lWykWu91XjVAqeKqTuW6vG8m+8YZOUURkAPr
         uZrzSMZ7TFmwHwtZ1fjODoBYyhFl8KJ3PpA3r55lxyWnZFxCCma/vDRMjAasnXpaZoPC
         suuhR/dy6PCpaFq2PEst7oX4diRUCgLsJ+gW5YiRwixdI49XK/JbYeWBUvHj9r1F3FZm
         +kmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=NQd1Wd6sIuwfQa9t3LgHt+gZSyF0tuNs40fO1Z3cv/Y=;
        b=tQ/7B2O6Yoo3ylbILI6HnGL+jD71PcWPgdx3akjtJsopBaGkkpOsCz3XCnflIWP6eS
         8yChwY8YP+M08cS3kxCU7Fqo1aS3mltO4PeOfMRMInzfet7n2kj8XkjgzL9ORhiNi+FZ
         DLlOChDGvSMT4qr2Rk5OcdfrfYpyMnBYl8hNFXgqShdwMPaBPNNaLr2rjBIRslmEocmM
         ZeAwr8UsN67QLnlhuNCqA/DUEaVhZNfidlbVQ4L9dH7yMq6BHsmSYzdc472YHYT055Ja
         N8ArldpoaotyxSaP1egV1JrNljtFYQVOa44aCKhzm5iVjA0vv+qwG8QqDI0wyh+aXwCT
         oBFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id e23si69651ioe.5.2019.08.28.08.40.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 08:40:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Received: by mail-qt1-f194.google.com with SMTP id 44so3473627qtg.11
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 08:40:17 -0700 (PDT)
X-Received: by 2002:a0c:d07a:: with SMTP id d55mr3168143qvh.93.1567006817240;
 Wed, 28 Aug 2019 08:40:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble> <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
In-Reply-To: <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 28 Aug 2019 17:40:01 +0200
Message-ID: <CAK8P3a1CONyt0AwBr2wQXZNo5+jpwAT8T3WfXe73=j799Jnv6A@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Wed, Aug 28, 2019 at 5:28 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Wed, Aug 28, 2019 at 5:22 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > On Wed, Aug 28, 2019 at 05:13:59PM +0200, Arnd Bergmann wrote:
> > >
> > > When CONFIG_KASAN is set, clang decides to use memset() to set
> > > the first two struct members in this function:
> > >
> > >  static inline void sas_ss_reset(struct task_struct *p)
> > >  {
> > >         p->sas_ss_sp = 0;
> > >         p->sas_ss_size = 0;
> > >         p->sas_ss_flags = SS_DISABLE;
> > >  }
> > >
> > > and that is called from save_altstack_ex(). Adding a barrier() after
> > > the sas_ss_sp() works around the issue, but is certainly not the
> > > best solution. Any other ideas?
> >
> > Wow, is the compiler allowed to insert memset calls like that?  Seems a
> > bit overbearing, at least in a kernel context.  I don't recall GCC ever
> > doing it.
>
> Yes, it's free to assume that any standard library function behaves
> as defined, so it can and will turn struct assignments into memcpy
> or back, or replace string operations with others depending on what
> seems better for optimization.
>
> clang is more aggressive than gcc here, and this has caused some
> other problems in the past, but it's usually harmless.
>
> In theory, we could pass -ffreestanding to tell the compiler
> not to make assumptions about standard library function behavior,
> but that turns off all kinds of useful optimizations. The problem
> is really that the kernel is neither exactly hosted nor freestanding.

A slightly better workaround is to move the sas_ss_reset() out of
the try/catch block. Not sure if this is safe.

      Arnd

diff --git a/arch/x86/ia32/ia32_signal.c b/arch/x86/ia32/ia32_signal.c
index 1cee10091b9f..14f8decf0ebc 100644
--- a/arch/x86/ia32/ia32_signal.c
+++ b/arch/x86/ia32/ia32_signal.c
@@ -379,6 +379,9 @@ int ia32_setup_rt_frame(int sig, struct ksignal *ksig,
                put_user_ex(*((u64 *)&code), (u64 __user *)frame->retcode);
        } put_user_catch(err);

+       if (current->sas_ss_flags & SS_AUTODISARM)
+               sas_ss_reset(current);
+
        err |= __copy_siginfo_to_user32(&frame->info, &ksig->info, false);
        err |= ia32_setup_sigcontext(&frame->uc.uc_mcontext, fpstate,
                                     regs, set->sig[0]);
diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
index 8eb7193e158d..fd49d28abbc5 100644
--- a/arch/x86/kernel/signal.c
+++ b/arch/x86/kernel/signal.c
@@ -414,6 +414,9 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
                 */
                put_user_ex(*((u64 *)&rt_retcode), (u64 *)frame->retcode);
        } put_user_catch(err);
+
+       if (current->sas_ss_flags & SS_AUTODISARM)
+               sas_ss_reset(current);

        err |= copy_siginfo_to_user(&frame->info, &ksig->info);
        err |= setup_sigcontext(&frame->uc.uc_mcontext, fpstate,
diff --git a/include/linux/compat.h b/include/linux/compat.h
index a320495fd577..f5e36931e029 100644
--- a/include/linux/compat.h
+++ b/include/linux/compat.h
@@ -520,8 +520,6 @@ int __compat_save_altstack(compat_stack_t __user
*, unsigned long);
        put_user_ex(ptr_to_compat((void __user *)t->sas_ss_sp),
&__uss->ss_sp); \
        put_user_ex(t->sas_ss_flags, &__uss->ss_flags); \
        put_user_ex(t->sas_ss_size, &__uss->ss_size); \
-       if (t->sas_ss_flags & SS_AUTODISARM) \
-               sas_ss_reset(t); \
 } while (0);

 /*
diff --git a/include/linux/signal.h b/include/linux/signal.h
index 67ceb6d7c869..9056239787f7 100644
--- a/include/linux/signal.h
+++ b/include/linux/signal.h
@@ -435,8 +435,6 @@ int __save_altstack(stack_t __user *, unsigned long);
        put_user_ex((void __user *)t->sas_ss_sp, &__uss->ss_sp); \
        put_user_ex(t->sas_ss_flags, &__uss->ss_flags); \
        put_user_ex(t->sas_ss_size, &__uss->ss_size); \
-       if (t->sas_ss_flags & SS_AUTODISARM) \
-               sas_ss_reset(t); \
 } while (0);

 #ifdef CONFIG_PROC_FS

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1CONyt0AwBr2wQXZNo5%2BjpwAT8T3WfXe73%3Dj799Jnv6A%40mail.gmail.com.
