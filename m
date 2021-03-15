Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBO7AX2BAMGQE7CYWA2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2E333C658
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 20:06:36 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id j1sf21801230ioo.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 12:06:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615835195; cv=pass;
        d=google.com; s=arc-20160816;
        b=qubD36qDIMMKpV3kmSCz8iVveg6vPC4GKiBvPMBniurKh/4j2HbcwbXAcOo2aEHdlx
         aNabYeGwapcreqzuj03C+6jKnqKFoZfRXE3ZL7PvSS3httmJ+YPMKl24Irxsa/4gZLA1
         m5FQYdqaQxvegpWOYBpj0RTLgIU1ooDpS0qqMnPTwG7R33UVvgt0NnT9/uZfujI+hiXR
         sgoiOFQaSpCe6p0cnCweWZXp4s6VEv8KUoFX6sG18XZtuTNEVyaBDH3xwTFxLkzRQB7A
         gd43AtBVHRrV3MqzAgdKCuEcpfXCpIYEGwThnWcSud/DM+Se4nQ4RuLRRriq7rH4U6MM
         RDxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=A6GrYfMy4yXKeFXAHEQfvESjZ4dOCW0D8B6XaoK1xeU=;
        b=ox6cmyInYds9V99Hss/UwQ1d21Na6oUrXE/LxuA07czsuAesX/BZYbeGO0MvaOv2uW
         zA/DMyggl8V9kclU+wx3PruT/Dh2xI7z1stS00ZUTibg+gDINBVbOBAqmfJHZZZYFxip
         TIy9VL4Y6HWo+oVXzxN9Nr7e1VSBCKOQ8Dx/YFQkLtCYJamuHqMMPRdRyHRTEDNsRaYA
         D41TQuLnyjrv6WWhhH+SvdhybF66c78duY849IdmDFNBkw9jXnp9EgWihGdcjyQms1+L
         WXfpxpsMuprW8L4mdFVv22PwcK03bb41qxFSCxA6cYdnID1v/QRf/l6M5/DWym0LCPjy
         hbEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=2mtkBkYc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A6GrYfMy4yXKeFXAHEQfvESjZ4dOCW0D8B6XaoK1xeU=;
        b=jrb4Zc82xEqHlc2xzo9qANfJ4v3d8TpMgHW57bUVkES/aub0c+IvcMddKQpwFClb17
         QSsTfzwpc6ERSXIVna+ZxDF60Wfbq7goFtFiyBFBhERaDUgKptP4LYgVtH+TSaNfhfOp
         MpnSqt0/ouqtQO9UJxODcxjVVmJpLRrQK4fM0LcTfJ721ndI3pbvXJ8Mw1k7xdZ1Twss
         M0u2aUElJ4hLax2t3tkbyU87Mp2DnaGldaOgJ9BTbx3AltcJU27qNedNuKotYBGMfxLv
         uiN98hm9p4DOVUGB6Iic4sOp2wpMdSCBRwgDKtbhzkCEg0w3GFHXXqD7E7DEiwgC+r5q
         jr8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A6GrYfMy4yXKeFXAHEQfvESjZ4dOCW0D8B6XaoK1xeU=;
        b=I3314VvcaqgsB18XlEG1HHjUMix/5+ZgxmTGSA7XW8wnl3jJXpPpVEkiTbh9bu6S99
         oStndfSpX916q8sE+owncoUFiLgjJjFsYVwXhrVxlmVz7ING3OR/8CHu5khdpbuSNfpK
         i5BVCPvrjQHNQjM9rJqv52HSziTNBp3T9R0jqAAz8koW+TsAQREDfIY5QeI4wsoHxAsh
         zgrCLpVa16cGaDxZR5YGbdv+UewvrJ7gHR3mgJyy1pZDbVWxe7s9sesPsYrSdpP6hPor
         OB1MheF5TOkh/9VgNOAr5pgozmQDDLkfqwOEtDWYzaarx6qPw6LgrVARJ1oN9QuG4fhs
         su+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I8h/+y6SmGYZ9SPLxk0VQ9FlTHW4tt5zIB/3R15YsndkewklC
	LH5BLoqjXPaW/r4l6EsNvh4=
X-Google-Smtp-Source: ABdhPJz++8A4B1VwLXm1ML5ZpP7Nt17cUG06am8Dhu5Z1Sq2irKq5FW698f1SzYFSZFVpUQYvilGyQ==
X-Received: by 2002:a02:9a0a:: with SMTP id b10mr10802834jal.132.1615835195286;
        Mon, 15 Mar 2021 12:06:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6a02:: with SMTP id x2ls520738iog.4.gmail; Mon, 15 Mar
 2021 12:06:34 -0700 (PDT)
X-Received: by 2002:a5d:8552:: with SMTP id b18mr789374ios.124.1615835194797;
        Mon, 15 Mar 2021 12:06:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615835194; cv=none;
        d=google.com; s=arc-20160816;
        b=IvjOFwF3L/OmDvhR8hQJXFrBg+pknFzY4BCtBbu5v6Hf80ejUG+om22mw2b/5rcoYj
         8F6lSZ30oaZP6fU8bMXQ87wJaHbjSkr8hLTDjNdjMRJtq+eX4xWEKGxQw3t7BRi8qatn
         CF8Rach6IfNjBUEDyJ023nxeiutjpQEHTdEK8387xd5OAkTpaertqRlaKoY0TiMoiygX
         D1VX0ubmSgBJTx5055eqLtujxyzovTHt52hEhIjBFEsl7ild4DwwGlVnSOrNGdDx4i3/
         KidOHneO0CX738URQTzzBQmbl8uBw/Hx+v6p0W1r0Xukpe+2nSzXdo9KDIlDAEaa+Pft
         P7Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OA0OL73z5QL54RkHhl/D3DPpryhsIRtN/75n7r8TjEo=;
        b=rbTtSS1I9e9dWW2k3CKbWpu308Csp0+XzCi0iJ3mpSttZBCxQDW0LEUnqjoBHODHwD
         A6sfb995kxLUddWzSSlZieBAj0yCSxwLPlZlkQIog37EZB6jQylb3TqAMNkuctLWdBsu
         bKSP57skaPD3M6YmtAFzLlDYtxVdp8eYFPUdJVW9wpEx9C7gKSmir+Wt6MRpEDQsWGTM
         4AxvwsQ898GijjCMRtoDBs1A9PlxL4cnZEPXuO+vjc+N0zYs8dsejMV465tkUaO018b3
         5z24JRwXVRPhkNdvjnZOirm/w9f+Sj/ub111I/H/1MQJguWePUu0LwgNwh+X0fNyfaXP
         jvBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=2mtkBkYc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si830517ioo.0.2021.03.15.12.06.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 12:06:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2F66864F3F;
	Mon, 15 Mar 2021 19:06:33 +0000 (UTC)
Date: Mon, 15 Mar 2021 20:06:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Sasha Levin <sashal@kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Stefan Agner <stefan@agner.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>,
	Sandeep Patil <sspatil@google.com>, Marc Zyngier <maz@kernel.org>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
Message-ID: <YE+wNS1iiVTU8YGb@kroah.com>
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
 <YEs+iaQzEQYNgXcw@kroah.com>
 <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
 <YEw6i39k6hqZJS8+@sashalap>
 <YE8kIbyWKSojC1SV@kroah.com>
 <YE8k/2WTPFGwMpHk@kroah.com>
 <YE8l2qhycaGPYdNn@kroah.com>
 <CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com>
 <CAKwvOdmJm3v3sHfopWXrSPFn46qaSX9cna=Nd+FZiN=Nz9zmQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmJm3v3sHfopWXrSPFn46qaSX9cna=Nd+FZiN=Nz9zmQQ@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=2mtkBkYc;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Mar 15, 2021 at 10:43:26AM -0700, Nick Desaulniers wrote:
> On Mon, Mar 15, 2021 at 3:37 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > Note that the 5.4 Thumb2 build is still broken today because
> > it carries
> >
> > eff8728fe698 vmlinux.lds.h: Add PGO and AutoFDO input sections
> >
> > but does not carry
> >
> > f77ac2e378be ARM: 9030/1: entry: omit FP emulation for UND exceptions
> > taken in kernel mode
> >
> > which is tagged as a fix for the former patch, and landed in v5.11.
> > (Side question: anyone have a clue why the patch in question was never
> > selected for backporting?)
> 
> I will follow up on the rest, but some quick forensics.
> 
> f77ac2e378be ("ARM: 9030/1: entry: omit FP emulation for UND
> exceptions taken in kernel mode")
> 
> was selected for inclusion into 5.10.y on 2020-12-20:
> https://lore.kernel.org/stable/20201228125038.405690346@linuxfoundation.org/
> 
> I actually don't have a
> Subject: FAILED: patch "[PATCH] <oneline>" failed to apply to X.YY-stable tree
> email for this, which seems unusual. I don't know if one wasn't sent,
> or message engine had a hiccup or what, so I don't know if it simply
> failed to apply to older trees.  Ard, did you as the author receive
> such an email?  Usually everyone cc'ed on the patch gets such emails
> from autosel, it looks like.

autosel does not send out "FAILED" emails.  I only send them out for
when a patch is cc: stable and is said to fix a older commit and the
patch does not apply properly.

> Then *later*
> eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections")
> was sent to stable on 2021-01-13:
> https://lore.kernel.org/stable/20210113185758.GA571703@ubuntu-m3-large-x86/
> 
> I was cc'ed on both, and didn't notice or forgot that one had
> additional fixes necessary.  My mistake.
> 
> I think one way to avoid that in the future in a semi automated
> fashion would be to have an in tree script like checkpatch that given
> a sha from mainline would check git log for any Fixes tag that may
> exist on subsequent patches.

I have a script like that, as does Guenter and Sasha.  It's very
computationaly expensive so I doubt we can reduce it down into something
for scripts/ as it's only really needed for those of us maintaining
stable kernels.  It's not for a normal developer.

> Then it should be possible for any patch
> that itself is backported (contains "commit XXX upstream") to be fed
> in when auto selected or submitted to stable (or before then) to check
> for new fixes.  Probably would still need to be run periodically, as
> Fixes: aren't necessarily available when AutoSel runs.  For the
> toolchain, we have a bot that watches for reverts for example, but
> non-standard commit messages denoting one patch fixes another makes
> this far from perfect.  Would still need to be run periodically,
> because if a Fixes: exists, but hasn't been merged yet, it could get
> missed.

I do re-run my script at times, it does require it to be run every once
in a while.  But again, who is going to care about this except me and
Sasha?

> Though I'm curious how the machinery that picks up Fixes: tags works.
> Does it run on a time based cadence?  Is it only run as part of
> AutoSel, but not for manual backports sent to the list?  Would it have
> picked up on f77ac2e378be at some point?

Maybe it will, mine might have picked it up, who knows, I haven't run it
in a while.  But as you say, because it fails to apply, that's a good
reason for me to not backport it.

Anyway, I'm with Arnd here, I don't see the need for these as it's not
fixing a regression and it's not a "simple" set of changes at all for no
real users.

I do backport changes for newer versions of gcc for older stable kernels
in order for my build systems to stay alive, but I never test with clang
so I don't care about those systems :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YE%2BwNS1iiVTU8YGb%40kroah.com.
