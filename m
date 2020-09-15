Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAXOQT5QKGQE3VRR45Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E1226AFE7
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 23:49:55 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id c5sf4063179qtd.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:49:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600206594; cv=pass;
        d=google.com; s=arc-20160816;
        b=lyp1vhrbfz+LTNuI4fayHmecyHcrcwkjmqSC/VAG5lWHNwOlPCZVlfwqjR+wTe9x6V
         NZjPIzGlMCXEXbX3TPxsIAk5xhPPVN+9XZx01LsiiFp6sodPMJsau6NPyZrg5s0ovTpU
         Y0SqtXWF4CGkNK1cpIaNVA0YgDgkc2K1/okqZxFf0ckEqgHPty2eGXhrH3d2TEUjOQmX
         QR7jGk/0AziNVWIG7CTpoeHuGPFgixnGSBeN8ld6FxmEPSaM6ZkA5eRGx95Ycn5UYY5y
         RBQAqOCYzvVhFIZCjKs/qxdAE2j2+2EzqLN1S5KdYJ/u9/E5StvB8tSesNpvEbwTpsRq
         dwGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=N/AYkkIguxYXDVqdRC/TRrEW1CizA5z8lAXjbuRc5rg=;
        b=bl4ACKb8576PXILm9ymnHyT27yZlTJn7orwLN6ZDGPoZ6OO0ZJI4B4XdXSbyTDHiV1
         oufYtAtLxNxYWbNtzuowC2tBrLMnJsgwSXJn1X8/TDIbTvhpFB9T0RpOHAFCmJD0L15A
         DKg6cAxdLVug0NIYmqXmfmMtvCvWvcF4x01fOlRdCVKgrZbLOZJ33LOyXXdqFrhpfmgr
         Nn+5/y8KitKVTAeSNMO54JS+jhgXfdpabxCuUcHfp32xtitQAvS9/jC8TYKR92H1+anF
         lQeYH6GkdakjvPMRqGYSY/nQw7y9SHrVdnI3gRWk8VBQVSs+043RdfID9PYP5xplsifi
         J40g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U2tjPWXO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N/AYkkIguxYXDVqdRC/TRrEW1CizA5z8lAXjbuRc5rg=;
        b=QHDkXQP5TluO0fTWx3fB4hjkKiBPwbdSX9UVH00y2FQ1aQwLa03SfNG86xAdEoB0W2
         +wTn6uaYyQnPz9TObqAOc7jh5qciVS8AhhiDUVJMDwbGFtCDHXP1TELZzwdUqqoQvAFR
         GqLsKCqPH/DDwBAZx00+MLX/ZbPKVVXZJtvCs4f6RnXyo2qFVZbs+5Z4JUdsx77eE7Z1
         EKFfk2gbttenyooCzMzJTt9Rq48SFljedEo1CKxfzgcwnhGfK8UseLcotwUwURZV8b+i
         HB14hL0FTcG4ysDPcoBz8q5VPhtcx4ZHQsWycpQGEpxgm7G/rMMl860AE77kF+iyWmcD
         hK0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N/AYkkIguxYXDVqdRC/TRrEW1CizA5z8lAXjbuRc5rg=;
        b=Nd/VN1T0933LsPMdc6T+9aODKRbLQkrou0Vkpm0UsoXovV6Yl045sUe6FMSGfD3J5D
         vPRWk5vkP4endy8DiK40BCp2iKQTVDsRNeET1Pyh4IxUe98RJ+AFKwoF7J5fkaV9maZc
         bUO0inpFTMsAxmk78HeVKqQZwadkcSX5CJgqO4bJOsjqr+m5XZ+oRg5OenkxwB6o/Oq7
         mohTqcmQlemVCbXwfi8PcDEDly37gxHRdkQqfaC91YpxNGMpKHbYaB6Oc7FluoN9FJuy
         +nmPOKh+xFc+DT90HyNt8PBbIxJugN/I1JvjxKydk+oZP2bXLNf2juIx5nngOs+G8NWy
         kcow==
X-Gm-Message-State: AOAM532YiDBej2OLbs0FPl0Xf6tX/y5FkmNBGcB+pGQV9NKeP5s9PwLs
	o9sbtqVObN+qVWosxrxFWqo=
X-Google-Smtp-Source: ABdhPJzejkz49nywwqx9uwk/V3VYCPDk4rP2kGMfVTHMeTgb82r1Bh3tHazleO8c/OyZKT5iUNRgKw==
X-Received: by 2002:a0c:b44d:: with SMTP id e13mr4576981qvf.19.1600206594540;
        Tue, 15 Sep 2020 14:49:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5dc6:: with SMTP id r189ls77584qkb.4.gmail; Tue, 15 Sep
 2020 14:49:54 -0700 (PDT)
X-Received: by 2002:a37:506:: with SMTP id 6mr20548007qkf.390.1600206594074;
        Tue, 15 Sep 2020 14:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600206594; cv=none;
        d=google.com; s=arc-20160816;
        b=i5P0ErrNk76sWduDdZdYJ073hAPTpZlrPTrCx1hhWwZuBFraGB6WB1y2sG1uF9MHjw
         bsNrU2/aTJumT5KhZNfaTDIJlkmJU2tdjY3BVtcKSsf7D19UQRLaxPP3zrEU9LlQ0/Jg
         n2Xr5TnGhO0tvOjcuM48tWXX6gkkbfODv+OWALZYrKpfMsjKDylsrFwU4U9AObH1TucV
         yMBQxaz/RTi8t15fj9Njlqcww1R6ahWwVYAj++SwJCHEjnh+S165fBt8C6PA1m/xzAHG
         2DtJHNJLOYtFaJilUAbIPGp46qBUPZEtse/4q6oIdC60xzCyphv1Ig6FbIgNMGgXV9JE
         skzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WRpHw5zCBEIhYxwdkTdUPJPPtKwwg9WVoW0/dlXYOFU=;
        b=QRUPsdSIs2uC4XZ7O/InV5qL9gxKqJSTc6zIRzF86q/7O91Ce5S+4W27cYaDKIhc9W
         0tFEG7bktkMcbfXR5UjAk4SrJdYspk1nA/r9y8TfwNQGYXz5dxnJp6qmmi7cchxG1qLp
         M5FhX/P0j/HQ/smTk3KzdV8UqUIbKAtmc7a3VMQImrIrxrftqgK67rnkFt8LsSjhzBzS
         USNbrVdQmXhof3yURYWZr2uDdPuGnSicyMFdiVs++l7M+K0/SfbVjqiDcYZz34I/ZYwt
         vB2xVHO+UrkAjJrdEbqfp+Gk9R99bUeTIRVfDFlNaas18Phn/kwJhl9EXXAkL5WgHe1D
         isRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U2tjPWXO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l38si727235qta.5.2020.09.15.14.49.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:49:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x123so2728153pfc.7
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 14:49:54 -0700 (PDT)
X-Received: by 2002:a63:7882:: with SMTP id t124mr6423889pgc.381.1600206593276;
 Tue, 15 Sep 2020 14:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200915172658.1432732-1-rkir@google.com> <20200915174643.GT14436@zn.tnic>
 <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com>
 <20200915182530.GV14436@zn.tnic> <CAKwvOdkKk1KuAFDoWNLnMUi3_JnV7atDFnvS7CdkgNXnNg0p1g@mail.gmail.com>
 <20200915202034.GZ14436@zn.tnic>
In-Reply-To: <20200915202034.GZ14436@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 14:49:40 -0700
Message-ID: <CAKwvOdmmXEu40m9bVL9zY5XyBRs2f15cs3FZQLCCh4u3i07pDA@mail.gmail.com>
Subject: Re: [PATCH] arch: x86: power: cpu: init %gs before
 __restore_processor_state (clang)
To: Borislav Petkov <bp@alien8.de>
Cc: =?UTF-8?Q?Martin_Li=C5=A1ka?= <mliska@suse.cz>, 
	Roman Kiryanov <rkir@google.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Pavel Machek <pavel@ucw.cz>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-pm@vger.kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>, Alistair Delva <adelva@google.com>, 
	Haitao Shan <hshan@google.com>, lkml <linux-kernel@vger.kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=U2tjPWXO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Sep 15, 2020 at 1:20 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Tue, Sep 15, 2020 at 12:51:47PM -0700, Nick Desaulniers wrote:
> > I agree; I also would not have sent the patch though.
>
> Maybe google folks should run stuff by you before sending it up... :-)

Ha!

1. they don't pay me enough for that.
2. even if they did, I wouldn't want that responsibility
3. I'm probably least qualified for that.  Google has many strong
upstream contributors with much longer contribution history than
myself.  Maybe toolchain specific stuff though...
4. you generally don't want people like that in any organization.
More gatekeepers winds up being a synchronization/contention point.
Remember, the goal is to train others to be self sufficient, so you
can drink margaritas on the roof.  That suggestion goes against the
ultimate goal.
5. You'd think a multi-billion-dollar per quarter company could hire a
few more people to help; instead stock buybacks are more attractive I
guess?  Maybe better ROI?  I suspect one too many managers
internalized the Mythical Man Month's point about "adding more people
to a late software project just makes it later" to mean "starve your
projects for resources" and run a ghost-ship (ie. big boat, with
little to no deck hands to ensure the boat doesn't "Costa Concordia"
(noun-as-a-verb...oh well)).  To be fair, hiring has been impacted by
COVID; my point is more so being stretched incredibly thin.  There's
been what, 3 Clang related kernel bugs you and I have been CC'ed on
today.  Hard to fix compiler bugs AND triage from the fire hose.  I
should probably just put down LKML for today and start fixing the
[haunted][damned] compiler.

>
> > Until LTO has landed upstream, this is definitely somewhat self
> > inflicted. This was only debugged last week; even with a compiler fix
> > in hand today, it still takes time to ship that compiler and qualify
> > it; for other folks on tighter timelines, I can understand why the
> > patch was sent,
>
> ... because they have the requirement that a patch which gets backported
> to a kernel used at google needs to be upstream?

That's a rule for stable, yes.  But also because we have folks that
don't seem to understand (moreso maybe haven't considered) that
"forking is not free" when upstream moves faster than you and you'd
also like to rebase someday; as such acquiring technical debt at a
rate that's impossible to pay off.

> Because I'm willing to
> bet a lot of cash that no one runs bleeding egde 5.9-rcX in production
> over there right now :-)

I guess you're paying for beers then.  "Android Common Kernels" run
mainline.  (They're a bit esoteric in terms of "production" but
cuttlefish virtual devices are running Android on mainline).

> > It would be much nicer if we had the flexibility to disable stack
> > protectors per function, rather than per translation unit.  I'm going
> > to encourage you to encourage your favorite compile vendor ("write to
> > your senator") to support the function attribute
> > __attribute__((no_stack_protector)) so that one day,
>
> I already forgot why gcc doesn't do that... Martin, do you know?

Martin has patches for that, he has CC'ed me when sending them
upstream for review.  Review was stalled, so I provided some feedback.
I'll review a GCC patch (once it's updated with my previous feedback)
if I have to; I'm not against it. w/e so long as we have a timeline
for a kernel fix.

> > And the case that's causing the compiler bug in question is something
> > all compiler vendors will need to consider in their implementations.
>
> Are you talking to gcc folks about it already so that they DTRT too?

I CC'ed Martin on the LLVM bug, since this is a case I'm looking for
his input on, or at least for him to be aware of the test case.

> Btw, if it is any consolation, talking to compiler folks is like a charm
> in comparison to talking to hardware vendors and trying to get them
> to agree on something because they seem to think that the kernel is
> software and sure, can be changed to do whatever. But that's another
> story for the beers... :-)

I look forward to it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmmXEu40m9bVL9zY5XyBRs2f15cs3FZQLCCh4u3i07pDA%40mail.gmail.com.
