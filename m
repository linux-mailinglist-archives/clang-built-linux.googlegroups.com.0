Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBJEOQT5QKGQERRNDRHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D8F26ABC3
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 20:25:40 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id x24sf1365672ljh.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 11:25:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600194340; cv=pass;
        d=google.com; s=arc-20160816;
        b=F3OLTHpBFp8FJXvUQsksM5gwdCVoeBQcVQ9kCCjZfnesKWJdy+CSIOhUE2ntzP1/6o
         +RIVF7j9mjrqmeWZ/+IjY1HeU7ejy5dEySB7oxvhE5r4bjASNJQWKr6O5TRkC4M831QT
         mkzRRA8S9ctZOhjlKZC+N89AO0RhRlOyR5wbPIBR2NSt+e1lbCZpTtEkgL8e5giSiUBY
         sJC7YeSKKBj8FA/d0OsDUDtRdxltnIKJnrUjOl3QKdRaHCdUM2hn4zfz3yG8pLpWnHtJ
         SQrEHzOAGfJOnJY/HDPqTRd09gXOPi4gK20bG5pglEuxn07LmysaDG+hKB6ufMsM3GkM
         QtbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cBb61iOzAPlETigSa0TrR6Z9nu4smbbDpz7qPDPvYxQ=;
        b=Fzg8LTxlg2cKFTVuddrbDonq0hITFInT7+YaALZLh4HvDahhd5laOcWu1xiKWSr40k
         r65NTnUF1ikaWgik6BC3WMUhKtnDmED7UjJW8pT6RJKaBrk9U9GFIK2NCrXZterFYVr4
         iX8eAXhSXzN1DB4X2IRg7wUsHQFVvwUmHO+HEp9yQtBStSC7vJl2Ih1JS88wB/QA3ESP
         8tuVlchFgInm3/by6TprQAMnsXsqX+PeMn4/hbC6/LEEQN6nrkh32bOvE/MYHIMgP5Bk
         TjcQH8cN7mV+0bmJH2cvIzNFd80iWkT9CQPcVxaghcttaoqkGpMbb2Gx8eujtbv3dnH9
         ZROw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=MGAqa30I;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cBb61iOzAPlETigSa0TrR6Z9nu4smbbDpz7qPDPvYxQ=;
        b=ko24JyAsOsI6ihAydnrYVEz1EOY0sFiXeK9WRCWTKAp+rxGznMbb/kXmcd0MNFRDP5
         Ay/VbJNstnv1pKrqCejbKPfSXaqgo7+rDhyuqrGmX8CLkRnLzda6pJH3En9owzRIRAFH
         Y3dk7foEgCex8pyRfO9gxCbQ125wx8IzDC5on5eoDc8g0Aeuiseo2RHgXzU0P2n2Jemn
         Kh8fDUWoRDBmmBLJcOTVYp2gOv66NZsQvV3jnX6W+YRmY8n6x9YqmNWGUf8QslhgV62L
         eIra66LmgrCL/2I0Tjy61iNt+5w/ycUWa/Kie5IJw7ARQVbYkVVrIbmz4VHViwGQigTC
         iT2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cBb61iOzAPlETigSa0TrR6Z9nu4smbbDpz7qPDPvYxQ=;
        b=KfhamIc7Po6YQJ98DGO9nyWlqjaTABPo8Bg1ZacjOM9qMWXXgrE+U6M2+hJJeLAEsT
         v6+rtJ/ERQ2Uoe+VVUPonjcyciCqJkMG0hbD5vVHzzYDgutXSdl3vyLiFYH+6A60pwlN
         E/Z1VJDRr8ChFMCDzfjmh4g9LynFHUzXuD+hF1NZ1q9MzglgskQ6b935g5wFeLZxKA3J
         ar3H6e68uoiFEjjFaMtmUMSdwUESlADrYM3edssmArVyE4gaxAU7/uU8a1mHtw0HU0fv
         ofYczKlpMKZ1oX+34xAtLyC0fQ+UCI4FZKQ0u3jYMfbrUaXYmeezFP1Ry2vv0aPN95H4
         QUuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XArnCJHIGfjSQMYlpWrqyAg46UQF19NBHVK0jFqElPlsKZcJU
	b8MPgvr7zL3GKseC3v+bf5I=
X-Google-Smtp-Source: ABdhPJw/q4nUarpFLhU3m+XGXS9354mAueQ05RlTXpOXjeBWJiv26zM3YucfB61fKXeIjYTe4ZBQxQ==
X-Received: by 2002:a05:6512:3e8:: with SMTP id n8mr2935261lfq.492.1600194340458;
        Tue, 15 Sep 2020 11:25:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a93:: with SMTP id p19ls2100611lji.7.gmail; Tue, 15 Sep
 2020 11:25:39 -0700 (PDT)
X-Received: by 2002:a2e:b4f5:: with SMTP id s21mr7620347ljm.270.1600194339245;
        Tue, 15 Sep 2020 11:25:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600194339; cv=none;
        d=google.com; s=arc-20160816;
        b=TQti3bcLlmGDhXmByLkGiDGqSs/UsnXKQ6FRXn6c0F5ofUEdZK4n/o4J6cRBTXCMld
         AAmybMAjlsfEeLOVPd7YTdpjuIolBOCwIASc0jLqRFg4pSNa+J24A51or5UUQ67EV7Vw
         QXW3OnLPYVaSizZOfenRrbJjiLV0k77Oxhd5NwHJFDWzlTto0RrqTJ6DvdDUGT7RX3KT
         UoxOjkd9tcpU9S4QJK78U/2BMi2/m4v+ozrTjyTfEQpMSujmUe0tLcNDXaPeUk47d6KU
         SxRSDjAukSk1nExY0nZsDqQOnDMx/MndS4HAz3WuKK335sNNOxlw5ASsnODx0u38t397
         pL4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0x/Qhri6rzs/dXcOby1rrn8kTnVB3dg9hCrfpRFNkv8=;
        b=xT2H2vtXSRRzit2X/0oLyfpqk1YJXcHyJoXSJqjj2A56HgX8eKepQp60o4sKGsZMIJ
         7m0ImZmlMvCJrKatf89rOKk6l8cIvTNJYYko5ied4PNZR4bxrwvXDKe5Ad+3lwON9+A8
         /5/eihYWdRFMpOgDabDm69Tu0fhW+1MKwTCCT3fZpMV1ALGnmQiw5J5tDNqq4krjyPyw
         nhjA/9ZZfk2iA+XABHE5ab/lJKn0rfRlLTHAFdnA5cJM6wii4Tlrx1iWZM3gf5iGvH99
         5KBvou7VKI4vLI2KDfNBlVNYYnDpAswPYYtSTzaMTEtXwGV2nyk4N1yL4YIHJb0F189w
         mBPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=MGAqa30I;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id k10si505761ljj.0.2020.09.15.11.25.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 11:25:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0e42009474dca2b756bdd4.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:4200:9474:dca2:b756:bdd4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 4DAAF1EC0246;
	Tue, 15 Sep 2020 20:25:37 +0200 (CEST)
Date: Tue, 15 Sep 2020 20:25:30 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Roman Kiryanov <rkir@google.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Pavel Machek <pavel@ucw.cz>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	linux-pm@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
	Alistair Delva <adelva@google.com>, Haitao Shan <hshan@google.com>,
	lkml <linux-kernel@vger.kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arch: x86: power: cpu: init %gs before
 __restore_processor_state (clang)
Message-ID: <20200915182530.GV14436@zn.tnic>
References: <20200915172658.1432732-1-rkir@google.com>
 <20200915174643.GT14436@zn.tnic>
 <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=MGAqa30I;       spf=pass
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

On Tue, Sep 15, 2020 at 11:00:30AM -0700, Nick Desaulniers wrote:
> This is exactly the same code from __restore_processor_state. 

No, this patch is adding 

#ifdef __clang__

and I don't like the sprinkling around of those compiler-specific
workarounds which we have to carry forward forever or at least until
that compiler version is deprecated. We already carry fixes for broken
hardware, broken BIOSes, broken peripherals,... can you follow the
progression? :)

So your argument about testing unreleased compilers in the other thread
makes a lot of sense so that stuff like that can be fixed in time, and
in the compiler, where it belongs (that is, *if* it belongs there).

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915182530.GV14436%40zn.tnic.
