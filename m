Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBEWKYXZAKGQEJXBIOMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 647931690B7
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 18:29:55 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id t3sf2726287wrm.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 09:29:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582392595; cv=pass;
        d=google.com; s=arc-20160816;
        b=PHOsNNUr3GUwJcioI72HpeeXbfu3GBAqLTJCU0PWccl6wC+L+HFNwO5rUwXVTtRDW+
         NZVtQr0pqocrpoy2F5l4lTJvZF/nXZNqwSGq0aQDjpHdI7m0UuvP46e+vfTj8iU4G7RI
         vxs/aPwbHfDv+2A3kf/LBTThK0KTtO3fo1xGfP7l/dx2DPQ3jkg2bupwu+lIdEN2ewxv
         ucEw9+MizYt0eWCt7dhPfwh2oz1g1Mj5dfDQbAgUNWDNCo4/PQBMMxU9KKdhDh/boezn
         fBBQQ3cM01rcwflVNJiJITuswWp8ER4hPwrpTzqmWBEse3HoX0g9CmG4cjvfOkB54oFr
         nKRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gsS5pnfeKTfbC9Mtln7YCmCcTR/Ngg3izIuZm7VawKI=;
        b=raTrBPx873Fgl1OJTmow6lrHkEvD/M74BtKcNZxfK1uciSc5A1GbQdVaMv4emdKMgy
         Q1BPXMn5HHl95nXVDi19emFOAwr6wB9KmTZGTGtxsgJWuugBufw8x3n6x6VzRzLPZImQ
         ULlXQYzwrJA5Fv/EcKpWyCeTP1gRQ4goRvaEeEnukwr2d/cyKR/FpuxKGkwG8t5GKJxv
         MJSgG6sl6261a4dRkm2CemGIGW5qoquPHR4JNv7qngFMgBJ/5rKuhbjxT7wWCIYR6mBM
         id1aiSdNR7m621YTBirPZ0lT70rsksG4eSqtni6BCat8bL3mXnZm8eM3ZAh33UusdqoV
         qMNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=SLFjpd8Z;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gsS5pnfeKTfbC9Mtln7YCmCcTR/Ngg3izIuZm7VawKI=;
        b=YPAfbOOjFjvUPUQXwK4YNxQwIIJPHe/VEOq1p9Tu/tSBoBLcZyctyn9WMZMVuO10gg
         AviOOMwF1WBGzH1mh0hL4Z6bId5Fhve8vv/k92T3DmPdH64AR4Oam4/sLgaNMtwRmwvW
         MDo1JGB3ajPjRNQxR0Naz0DDmzM9pYN0hv9vUUJgtnxnc+LUJlocoqsnLj5cyWa64Ko+
         wH/s5AOEFOiYl5HVYRp/r3Io1yubR59M67QD1uLkI/3muAU3/0k2UEoDZMPyS6OSJ29/
         JvHWoQKY7gQu76MhoF6fsxwLj/hRbHkoXShCDkBDqn9YejiLm8/xNxTcPVt2Z0haQN94
         4T8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gsS5pnfeKTfbC9Mtln7YCmCcTR/Ngg3izIuZm7VawKI=;
        b=B2JhDtmOXhjMu4Aq2xAH4jeYguDqR9UF73GzC9dtVJIzBxPs3GjRsVkpDkY7+oPYfN
         fqclU1TgwlnpGWRFwsTx/rGo443UYY4ir+1UJJaaFBRa+MEkRiUJkRyiI0oGpRbwmqYZ
         W0VkS5WbRoGkXFbTWa7n1A+W7OWHnvYJRun0f72E8YPwzTCDLr7WeK9/DL30msl4URvA
         U8VUnxqrfHqg1X+X4ZTUUBbTcM+v+11j+BkH+1/aZtEuOPwJCi4nbkpm0G6/qBgs5fqv
         iu6yVyk7f5s/tKLT4giUw9maeYuCCQ4rtCsn3lFvx/C1b4w4MEyoh4J+S7FjmhTybcOx
         OaVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXer2D3Ykw6B0aquaSSyhfjHy6d/oUTpB7QW5fpJ2StLsiAki2L
	4s9X4CRaor1081Yjh0/3SFg=
X-Google-Smtp-Source: APXvYqxBmdtSF7CtKnA+b2A184CTzzMKeDUg1OJaKgfXZaT6VieGMj+9x35H4mn8e9vItmJGwxWIRw==
X-Received: by 2002:a7b:ca49:: with SMTP id m9mr11600588wml.50.1582392595035;
        Sat, 22 Feb 2020 09:29:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:670d:: with SMTP id o13ls829540wru.3.gmail; Sat, 22 Feb
 2020 09:29:54 -0800 (PST)
X-Received: by 2002:adf:e5c4:: with SMTP id a4mr58969648wrn.292.1582392594521;
        Sat, 22 Feb 2020 09:29:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582392594; cv=none;
        d=google.com; s=arc-20160816;
        b=oX1K0ndVDbug+TWNFvFqLG0dt9gcEFopZPR+V6CKJZAO2JQFQ6cV0TV0/mA2f0yCXH
         sHawsCrBjGk3VcqAzR0AGaykWVSNSVDGIP5AoXEdJxVKNVghTMOSNNtpCOvrqv+IDeEs
         Kt4fRx6Ml+FVfVQPHK66+83uEVT6T30OwA1yeHbcl5cvnPavq7rqwQwxBSuaMWY8SKLM
         XqlyeA8lMm9nC1DTTpbPDhm53zbV2qwJn9Vchf7HStLwiwmmG8Fkqewg2/1xkaqZP6Vs
         9k/5FNI4WrIJyRFuO6Y8QFKzCtyz8RVFj6h8tMgxQ5iTqTKiQw3nhavGdAysPoLSNwgv
         YV7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Q8Zz/tPA4c0tTFwY1epydrU6u1758UfizTFQVuBcSzA=;
        b=qL4A9CFrra81IuFXPR9cZC3OWwlXK3wJvx60Z3wn8nJuLgj+t4YZHdzvebFacLrYaj
         Krt517TD5jj+M8BnhTpera+XtlfBfzmcVw2eSwAxAF9EnqOKLUPjEB5/td7aLCT8U3hP
         pAFJZZJv08bBhHqpJpnxnkTLT8Qbm1YmWeEgxGcO1ikxUnQirVyUNkeaL4zwFOpYX9wu
         2vOEs2BR8GBFWIOa1KfRMT6yMJc7/Yp6FwxqlIE+1i9zvDZqsYNdVUe2XucsItQQkJQI
         z6ZWVGpUcuEIUebB2ldxN09RZOl/8cqXzVSj36gk8snP+2YbhIa+acI/sAwcJ2EYGbhv
         QMDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=SLFjpd8Z;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id e21si603403wme.1.2020.02.22.09.29.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Feb 2020 09:29:54 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F1C5400329C23FFFEA6A903.dip0.t-ipconnect.de [IPv6:2003:ec:2f1c:5400:329c:23ff:fea6:a903])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id D39C21EC027B;
	Sat, 22 Feb 2020 18:29:53 +0100 (CET)
Date: Sat, 22 Feb 2020 18:29:48 +0100
From: Borislav Petkov <bp@alien8.de>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222172948.GC11284@zn.tnic>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074242.GA17358@ubuntu-m2-xlarge-x86>
 <20200222153747.GA3234293@rani.riverdale.lan>
 <20200222164419.GB3326744@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222164419.GB3326744@rani.riverdale.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=SLFjpd8Z;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Sat, Feb 22, 2020 at 11:44:20AM -0500, Arvind Sankar wrote:
> Boris, should I send the fix as a diff to the current patch in tip, or
> as a fresh one that can replace it?

The offending commit is the top commit on tip:x86/boot so I'll merge
your new one with it and thus "convert" the former one into the new one
discarding .eh_frame only.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222172948.GC11284%40zn.tnic.
