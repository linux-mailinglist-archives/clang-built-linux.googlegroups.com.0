Return-Path: <clang-built-linux+bncBC42V7FQ3YARBF75UL2AKGQEFK33O6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f55.google.com (mail-wr1-f55.google.com [209.85.221.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 579BB19E690
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 19:06:32 +0200 (CEST)
Received: by mail-wr1-f55.google.com with SMTP id 88sf2423989wrq.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 10:06:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586019992; cv=pass;
        d=google.com; s=arc-20160816;
        b=IsMLYEH3QJKV6pgiwgtGsNDNv8B1mtJS+Hr3ham7lgevfxHHl5OSeSGSGYkQZAll+3
         e9dnC+wj+m2YPionu4r+i5WJbN9uGPcHNIKsD0MQmD0DIqkiFcJAe+JtEazpTgr40CGS
         V3uOqIFD6vk1IuddAu0hJy557t+a8KaMe2D69UVt3udz+c314dzyaxY1RAU6YoX4qwft
         45zf0BrPdr+9UghzYk7kGRzQLNn5TfK9wuOQlNwCGapzYHvyc9DyZaYHOyj7rUATqB8a
         w+329fxrNZoDqw/anJI8cQnYseZtPdkbPxTMLRSg9Y3tE4NzEDy3U5LidF6vgyAklENo
         4ivQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=uw9z9sxX93nsBUVP2/zVqgr/z71GbReZeliw41IYM1g=;
        b=cK6LT4zRBpR+zkApB1MYCoqHOt3aWJMLwzTQMHKwq7E229UmdQEwROLV98IhGoIKhF
         QuKgRrtg1liSg9g5pqO79GRPr/FLoOTxq//mLEv/d+VWl3IE4Ad87r8p07WJQOJhBUNO
         9zzZz27L4nGNK/O8H62rsH2n+gWhP37YjnApR8/XfQEQ0t6/NHEfxDkGgjVI6+pnjDQi
         iRFIZGPUJWJi2vbO2wsOPJJ011cTetCueZfgnAYuxQA6Px77cP0vF0eY0IsYhwJpfISQ
         9ofj+RWjQuXTKhuQxnkE+0vEKpZsVLfb2IVu5i4p9r5H3Xd5GqIzfzR7M/cn44f58jFR
         1IOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 2002:c35c:fd02::1 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uw9z9sxX93nsBUVP2/zVqgr/z71GbReZeliw41IYM1g=;
        b=MVjqnjh/0nb0H74jP5sbaqoyHe9d29xvf9bvfhyk0bKUfh/nugismETxlatoB3tOAG
         qjkedbu8ORu7Qs5v3zc1NFeO9vbNybbCQHUYIB0/dog1JK4luCo7PXEZaAWDN/5c73pX
         MbwXlipzJAdhOBsVWvG4/Kd2y/k4QNJXVdi2i97oMDpTjkYG3mFFZNvf3ryMohS66pGt
         PKgDarfszP4Rtv8Zz4VjEkfjOsv6hScVaX62Q8WTMJNg3bdso/KfFqd0O5wfbl6rHhpL
         cnRQ+MD4FZ2wTu3Of7vkaF6t6x2r7PGRUlILah2LIjPSDo8aFnevv6i8LOpEbiU+X3cY
         TDjQ==
X-Gm-Message-State: AGi0PubqslENqBRSNbsYmfxVbEywMU9ptYqxtkW6EKkljAkcOU2JrF2H
	Z/HaHgP/gAVLhPJFtONpsy0=
X-Google-Smtp-Source: APiQypJ1MjAJtQ+sfWBl3tEIj3AGunGcLIDrg2hHofy+5rWEEu2S5o+KAChTTAcKwQCxT7oXOd7sqQ==
X-Received: by 2002:adf:c511:: with SMTP id q17mr15249740wrf.275.1586019992001;
        Sat, 04 Apr 2020 10:06:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6302:: with SMTP id i2ls2769887wru.4.gmail; Sat, 04 Apr
 2020 10:06:31 -0700 (PDT)
X-Received: by 2002:a5d:6588:: with SMTP id q8mr12453587wru.189.1586019991253;
        Sat, 04 Apr 2020 10:06:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586019991; cv=none;
        d=google.com; s=arc-20160816;
        b=bN5EVdQ0sRSReOVj/oBDfiMDIYm9jKrjpY62982cDm2GxEX5FrJIaxKoEP1WU/b2+z
         2ivs7i77O2Im/PvOH0sFE1KgnSmactrZgSuK5CPAgxHjsaCQnWUHO7djvy4Rlx49nmCn
         /RW1JkrTHaLV7Q3vETXR7zalsHnaQixaC8niSuZdISR4uymNsxID8htKEXV3+TXAJBf3
         mtvc9wDUy5qHvbEsWaJvZzc5m5Ct+nf0eXkqOa76bzGQZ8CQh5ZwO3NSshG/AS9jMPDm
         BPH2jyNww6VdxQVlFrQPbB7BdSEyJ/0Usd+b2QItgHKPcjrmq7fIwHxjhTI+QoZkMKeS
         fZpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=eEj/OfABCpdukNdz/VpAtagz0stp8oKV7R8o2o7v+Ak=;
        b=c1YbwEUx4AMmSODQltQFaWB4/07RsfwdepmIueRyB/X2u7JBNfB3zdRfIafgGzX7lW
         kxJeTqr0uGB7Mh0kSXWPZVflGQBzWGCskd0hiG5dptXzBCt1NHoFqWZjB52TT4IxAi2k
         O/ASVsgwNYsj56c7V7v9YqsM5qXkrzzKdL7chk07SEho9Xzl0wpYo8EqTShn4xx6P5/v
         dNzNtetmGjwRNCV5WWOPgClq4MmgHBynYrdpeG4FQiYWUacBDSNuYuq3hLC6Q5zsp6Cu
         VcQrFfbk9qgaBfdcfxSz7/Vu9d1UVqoWM2LWhFARFPk5Qt23+iXkWuYIQHmXlbwUF/lN
         ol0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 2002:c35c:fd02::1 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk. [2002:c35c:fd02::1])
        by gmr-mx.google.com with ESMTPS id d6si609004wrq.3.2020.04.04.10.06.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Apr 2020 10:06:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 2002:c35c:fd02::1 as permitted sender) client-ip=2002:c35c:fd02::1;
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKmFA-00AWk5-IK; Sat, 04 Apr 2020 17:06:04 +0000
Date: Sat, 4 Apr 2020 18:06:04 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Oleg Nesterov <oleg@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, tglx@linutronix.de,
	mingo@redhat.com, bp@alien8.de,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Marco Elver <elver@google.com>, Brian Gerst <brgerst@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] x86: signal: move save_altstack_ex out of generic
 headers
Message-ID: <20200404170604.GN23230@ZenIV.linux.org.uk>
References: <20200324220830.110002-1-ndesaulniers@google.com>
 <20200403231611.81444-1-ndesaulniers@google.com>
 <20200404160100.GB26298@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200404160100.GB26298@redhat.com>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Original-Sender: viro@zeniv.linux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of viro@ftp.linux.org.uk designates
 2002:c35c:fd02::1 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
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

On Sat, Apr 04, 2020 at 06:01:00PM +0200, Oleg Nesterov wrote:
> On 04/03, Nick Desaulniers wrote:
> >
> > --- a/arch/x86/kernel/signal.c
> > +++ b/arch/x86/kernel/signal.c
> > @@ -416,6 +416,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
> >  	return 0;
> >  Efault:
> >  	user_access_end();
> > +	reset_altstack();
> >  	return -EFAULT;
> >  }
> >  #else /* !CONFIG_X86_32 */
> > @@ -507,6 +508,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
> >  
> >  Efault:
> >  	user_access_end();
> > +	reset_altstack();
> >  	return -EFAULT;
> >  }
> 
> I must have missed something, but this looks just wrong.
> 
> reset_altstack() should be called when __setup_rt_frame() (and
> unsafe_save_altstack() in particular) succeeds, not when it fails.
> 
> Nevermind, Al has already suggested to use signal_delivered()...

FWIW, I propose to do is the patch below (against the current mainline);
objections?

Don't do sas_ss_reset() until we are certain that sigframe won't be abandoned

Currently we handle SS_AUTODISARM as soon as we have stored the
altstack settings into sigframe - that's the point when we have
set the things up for eventual sigreturn to restore the old settings.
And if we manage to set the sigframe up (we are not done with that
yet), everything's fine.  However, in case of failure we end up
with sigframe-to-be abandoned and SIGSEGV force-delivered.  And
in that case we end up with inconsistent rules - late failures
have altstack reset, early ones do not.

It's trivial to get consistent behaviour - just handle SS_AUTODISARM
once we have set the sigframe up and are committed to entering
the handler, i.e. in signal_delivered().

Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
---
diff --git a/include/linux/compat.h b/include/linux/compat.h
index 0480ba4db592..f614967374f5 100644
--- a/include/linux/compat.h
+++ b/include/linux/compat.h
@@ -461,8 +461,6 @@ int __compat_save_altstack(compat_stack_t __user *, unsigned long);
 			&__uss->ss_sp, label); \
 	unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
 	unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
-	if (t->sas_ss_flags & SS_AUTODISARM) \
-		sas_ss_reset(t); \
 } while (0);
 
 /*
diff --git a/include/linux/signal.h b/include/linux/signal.h
index 05bacd2ab135..28fe9cc134f7 100644
--- a/include/linux/signal.h
+++ b/include/linux/signal.h
@@ -450,8 +450,6 @@ int __save_altstack(stack_t __user *, unsigned long);
 	unsafe_put_user((void __user *)t->sas_ss_sp, &__uss->ss_sp, label); \
 	unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
 	unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
-	if (t->sas_ss_flags & SS_AUTODISARM) \
-		sas_ss_reset(t); \
 } while (0);
 
 #ifdef CONFIG_PROC_FS
diff --git a/kernel/signal.c b/kernel/signal.c
index e58a6c619824..4cfe0b9af588 100644
--- a/kernel/signal.c
+++ b/kernel/signal.c
@@ -2769,6 +2769,8 @@ static void signal_delivered(struct ksignal *ksig, int stepping)
 	if (!(ksig->ka.sa.sa_flags & SA_NODEFER))
 		sigaddset(&blocked, ksig->sig);
 	set_current_blocked(&blocked);
+	if (current->sas_ss_flags & SS_AUTODISARM)
+		sas_ss_reset(current);
 	tracehook_signal_handler(stepping);
 }
 
@@ -4070,11 +4072,7 @@ int __save_altstack(stack_t __user *uss, unsigned long sp)
 	int err = __put_user((void __user *)t->sas_ss_sp, &uss->ss_sp) |
 		__put_user(t->sas_ss_flags, &uss->ss_flags) |
 		__put_user(t->sas_ss_size, &uss->ss_size);
-	if (err)
-		return err;
-	if (t->sas_ss_flags & SS_AUTODISARM)
-		sas_ss_reset(t);
-	return 0;
+	return err;
 }
 
 #ifdef CONFIG_COMPAT
@@ -4129,11 +4127,7 @@ int __compat_save_altstack(compat_stack_t __user *uss, unsigned long sp)
 			 &uss->ss_sp) |
 		__put_user(t->sas_ss_flags, &uss->ss_flags) |
 		__put_user(t->sas_ss_size, &uss->ss_size);
-	if (err)
-		return err;
-	if (t->sas_ss_flags & SS_AUTODISARM)
-		sas_ss_reset(t);
-	return 0;
+	return err;
 }
 #endif
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404170604.GN23230%40ZenIV.linux.org.uk.
