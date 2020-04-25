Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB6XRSH2QKGQEOAU5VOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C97B1B8843
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 19:52:58 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id b203sf6249571wmd.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 10:52:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587837178; cv=pass;
        d=google.com; s=arc-20160816;
        b=cIrSbACt37eL+Q/O/esQY6sghFiCb7UtFEYDQfYTgKK1Vy1+sSlnO5SBG15EzEsUm4
         ZGJNOkFsdW4encbOEPnjHDv02PhGf+kaK4kOP0Pt35KR8syGDFzvvzdogh3pdgQWtSwW
         K5+dav4ejvKjtAVqj4zA3cOcvXmjD15+Jhbnsmbulj/Gk5QKhIQkF5KInhKtJA1l/Et+
         Ba8N/G22hXfG+QgCs7ShXweIJGIzi8hYNd/o0VdIUpwy+Fj9LIOrKIVUSeka2WA0XUoD
         MiyVJ9HrtwSXnBKthBaQ+Pv70cGFBHz9QwTsR0NOJUKr/zvuwsYO7yNcjxYl+IitW2XO
         4Y9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Ld7ExoBbmXvW4Gmy2nPROR9N5SQj/Rp38nIX9sqa6eg=;
        b=bjHesuI7KlOekI6LWDdZQSS27bG4dpEvujJWTFA29dMGDnd6U97HfHIpNnj2s7L40g
         0O3xJaAyMJ8aavuirMxliIZadqKw9lxcbL4rQ2Ljw1sPxaZUNZEhGfjof1SP3w9RriHn
         RLQ9ESQTvox5CzQNxT7QMCGkFZkAvI0o0tq8jhUkZysxayG1te3Em93Se7KJhF/l9rtI
         4pwgK6BOFJyTpAdn9htQu8kuA2WLnxk3/5FbudtFjSGYUC67DIwOU7cw2qiY0bCdv7kK
         pNruzGT5hmqlYmZFroqDR3UCtKvrhtB7JBTpOzNkJxCE91DVgSvF/kFVYmHWWP+uIIVs
         lnNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=R1myo23W;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ld7ExoBbmXvW4Gmy2nPROR9N5SQj/Rp38nIX9sqa6eg=;
        b=F6aRkx3VOB2X0ypIXb2ZFjyWYtGVy8E3w6PMhZMFn8NFA/BsWDbK4K4hhtljvQKNgF
         H0fLtxqzkhcjwwAmhiE6A8SgawBDS3Z5hY6tyfvNyY9DZx/O7aDdmQ25mPYx76avPzG+
         9egeKmP0USkXULUAdfKxF0+LYNJbVEeSL0wpk1asS67N+9kdDDG6oY+DRYahkjXWWqt5
         xyj3hb6Fv7gnFlk975tDEiVTBB0n6GzGSu2UYLsfYVjeRbZS4PknSk2XULJ8hotEyvXj
         pLTOsSOl2EXhsdHl6gpJlhXPDfwMjxfHGXL4Uymb77tVYxUHK4vv3FQRjH27CkPJ7BMA
         FslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ld7ExoBbmXvW4Gmy2nPROR9N5SQj/Rp38nIX9sqa6eg=;
        b=jgs7RGaB7nN0/FQ473QQQO68dysuX5TG3R+PsSe0yAKZUK5ZiACK/TTPf4LDWa9Dh7
         Y8JljVnmfeU0yd1XYXVLz6VeNLXzKG6LN3sLKpypGb2vv0dpALqYlRDdvGODNb13rUHv
         Y1ecGvlCoAh+IRRXcUSnQZH2sfaZzP0XtIW8PRmOvt6gaKGcGOIQRp23IeQyyU0WtcNq
         +MKaRkMg4gD1E4atULfsfS4aKfEqHn2FnUoKlt6ffLcYPh9syc2mHLf5kQDs6p65YbZ8
         vuO0bmjQyZicYloV8RmPGBvbvIKTfvNlZaA6YP0bP426VqiNAS/MqfO0+hppYw+yf5Gz
         4T6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuagjzOxhooiEyYUzcSXrqspAH5m8vG54Zz0ZRsddfcB0IJdC1WT
	mjIH83hFFm57h2pDq3fQ1iQ=
X-Google-Smtp-Source: APiQypIcdsnr/IzSOEqu9/SHBEOKa8UQ8cjalqe7HTB/IGg56RLWPmxJnf0e2cqmDMRoSKNrYiYsgg==
X-Received: by 2002:a1c:e187:: with SMTP id y129mr18143055wmg.133.1587837178272;
        Sat, 25 Apr 2020 10:52:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:224f:: with SMTP id a15ls14532163wmm.3.gmail; Sat,
 25 Apr 2020 10:52:57 -0700 (PDT)
X-Received: by 2002:a05:600c:c5:: with SMTP id u5mr17796850wmm.134.1587837177615;
        Sat, 25 Apr 2020 10:52:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587837177; cv=none;
        d=google.com; s=arc-20160816;
        b=h6bA4uenxua4De5wHUTQOBy+gHj8qlrPW2WQanvjbtem3uSboZguhstUNg/nlVXNPN
         6pNDR0dCtA3t5oqTAces2XOlin13zcaJgOcSkzuGCAie1uXgd7ID2BH1Buv0szqukNbB
         WAhvl6ODJ6ZLAyKrU7xxSusXKsFS0VTJNDTh4IQncA2LdGW4SOdK0s8P+Q5sqhG3FMPn
         aogK1PNJvRn2a3duuSLtDJPD8Tg52Flw5UZbn3F0+8Rk2HQyX746G8yz0GqJc+zp6lBa
         ntNPVyHzXcAcv4C81baCKEVnZsnmFZcTSC1lAvXjSmjcanmuVg6Cmdkernt/Uj0yVR5x
         caMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TpVMN9srSTRxzvdHGcL8+sKPNt7gpM//pRvQmGJNb+g=;
        b=no1iXyjRZmy6CYGzj1lraB1TkAkHgHV6C5RMzotXKPeKkBQTc22UDg7pt2xmqKWTlw
         XTdBUGw3wc6TLamWaRgAPxCL/BO6l9A6upMN+OqUFfmazac6g3Px9Eg3Z+dOaaOYeZjC
         vWT/Tl4C5uRNQ59xAeR4mmIYuZH2RNzCv3GihF0sOMt89ykOFwBUeFP4BicA9QHr2Uzk
         vnlQ8r72aWWpHMW6/JKrt8F4nhuH7Q7vZ/PGaKp+5HE6wquFaIHqFIB7APM+M6nRQe30
         3RlTepuokmNjFahpWRTwuf71JL7Ktrk/Ddz/KuLi85Rr6Pt7R03uTzV3hgG/jZeqZ703
         vyDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=R1myo23W;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id o9si493584wrp.3.2020.04.25.10.52.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Apr 2020 10:52:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F2A1100B46A3E12B0A6AFFD.dip0.t-ipconnect.de [IPv6:2003:ec:2f2a:1100:b46a:3e12:b0a6:affd])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id D4BD71EC0CF3;
	Sat, 25 Apr 2020 19:52:56 +0200 (CEST)
Date: Sat, 25 Apr 2020 19:52:49 +0200
From: Borislav Petkov <bp@alien8.de>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
	Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>, x86@kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
	=?utf-8?Q?Fr=C3=A9d=C3=A9ric_Pierret_=28fepitre=29?= <frederic.pierret@qubes-os.org>,
	boris.ostrovsky@oracle.com, jgross@suse.com,
	linuxppc-dev@lists.ozlabs.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200425175249.GC24294@zn.tnic>
References: <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
 <20200423161126.GD26021@zn.tnic>
 <20200425014657.GA2191784@rani.riverdale.lan>
 <20200425085759.GA24294@zn.tnic>
 <20200425150440.GA470719@rani.riverdale.lan>
 <20200425173140.GB24294@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200425173140.GB24294@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=R1myo23W;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Sat, Apr 25, 2020 at 07:31:40PM +0200, Borislav Petkov wrote:
> Hmm, that's what I was afraid of - having to sprinkle this around. Yah, let's
> wait for compiler guys to have a look here and then maybe I'll convert that
> thing to a macro called
> 
> 	compiler_prevent_tail_call_opt()
> 
> or so, so that it can be sprinkled around. ;-\

IOW, something like this (ontop) which takes care of the xen case too.
If it needs to be used by all arches, then I'll split the patch:

---
diff --git a/arch/x86/kernel/smpboot.c b/arch/x86/kernel/smpboot.c
index 73bf8450afa1..4f275ac7830b 100644
--- a/arch/x86/kernel/smpboot.c
+++ b/arch/x86/kernel/smpboot.c
@@ -273,7 +273,7 @@ static void notrace start_secondary(void *unused)
 	 * boot_init_stack_canary() and must not be checked before tail calling
 	 * another function.
 	 */
-	asm ("");
+	prevent_tail_call_optimization();
 }
 
 /**
diff --git a/arch/x86/xen/smp_pv.c b/arch/x86/xen/smp_pv.c
index 8fb8a50a28b4..f2adb63b2d7c 100644
--- a/arch/x86/xen/smp_pv.c
+++ b/arch/x86/xen/smp_pv.c
@@ -93,6 +93,7 @@ asmlinkage __visible void cpu_bringup_and_idle(void)
 	cpu_bringup();
 	boot_init_stack_canary();
 	cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
+	prevent_tail_call_optimization();
 }
 
 void xen_smp_intr_free_pv(unsigned int cpu)
diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 034b0a644efc..73f889f64513 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -356,4 +356,7 @@ static inline void *offset_to_ptr(const int *off)
 /* &a[0] degrades to a pointer: a different type from an array */
 #define __must_be_array(a)	BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
 
+
+#define prevent_tail_call_optimization()	asm("")
+
 #endif /* __LINUX_COMPILER_H */


-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200425175249.GC24294%40zn.tnic.
