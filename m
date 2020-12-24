Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBCVPSH7QKGQE23PSOPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id B41F72E2590
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 09:55:39 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id 7sf1151996lfz.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 00:55:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608800139; cv=pass;
        d=google.com; s=arc-20160816;
        b=BOCxesY4M4lTfmfoA13yh1oxsGKDgDq0TDtJHUlK4RZE7/sPH6XnaRfd2W9I7wYKJm
         CePbmskGL1F9rI7UmzXEZDyKLG1XwfmYXeoK3RbVTlBcmMlIlxIr7RhTjRVA7+r5l/FL
         Gc3nJfaIBnBEe49EAI5IbzAiW7Eqt+LEoMtysktfOtfhOBcT76PaNre8i7I37iZW7TUw
         VppyOeuotLrKwL8/cuPgQz/9DE+oikiAVGg6OxFWHJx/9dFCwyIQ+H1USBPGWt7TPIlu
         hH3Y97wIiFHeDI8qCdzfFamqpCeHNE3MKGkQ/5HkT9hDJF8NxJTt5Yh5m1xN83Dzj4Pj
         aHdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Twh9NknFbkjX4of2xAJxqbq9w4htnlUE8q52jir1L4g=;
        b=A2/xjUoxcJ6rvKu6MKrg4TqYzIaat0vbSab1ECIKO6yJinoV06ONCJkgRRz5dCv/Ce
         a2+OV4w6uFc29eJtnj+wp5/UYLJrCLZcx/mGJEgBwxaKsJsoqxYnIei4WaLK0xEEapO8
         GgqcADydY1DkuNZQGihM2joejhDsiLHyHi2T3PFYRcQumurglELmczRbJKodibzwgilx
         Yeag5CI+7z2qHLYmQDtlzkV2JbZPG7MeagsUcLnC2Pjfw9RMEFVXbsxQLfFmHuOTkQhT
         Z6VdmrXSw7n9JTw9wQD/0RBwIu7O+8ATcryZJGupYmBU1ZUrQLdDlk4mH8cddwm/IIWi
         PpWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=PNfRnUo9;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Twh9NknFbkjX4of2xAJxqbq9w4htnlUE8q52jir1L4g=;
        b=IPWQfgn7qlxdEUO+kQEN/dQhmznYSs3gn65v+eiQ5Mi/52REXjBHYj8Q0hpixlqwpk
         VwcI3VfO4Ui+hBiICLBCpgrE8yaAbqvN7IiAugs0of/R3bOzpgeMmRhS7ciz+nIGrU+F
         6rxYKCeR1dvCOU+LO1OfrugN10Jz3PPn8rlH0Fy+2DijSUWftuPI5HSvAsSlfHA1qc9O
         MgnwquxRtOXjqTPCpUbaDDIkvsld0q+ItuhyQ2DioSzGIb9eXzFZ0H0MmSXe14sBAydi
         gqH6yMLdc6BzOD3HDUYKp77UqTINEC3Hi6HQgpNn1W5O2XxXNICClxCpcYTxYKLcFicb
         z0qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Twh9NknFbkjX4of2xAJxqbq9w4htnlUE8q52jir1L4g=;
        b=QbxPHmAJrELG/HYxtME1lmyMwQuMMBgYnShR3Boq3V3yxSgyxuNbB90DbB8O6DxNOv
         3RdK3KmJpZuhRh3NNmlbohNLj3Pckgl7/dLBc5mbAQ5VdEssyXlqcKieguCTUk5Bnwo2
         KWTYVqEGwzXAwSXNSlMDqlezazAOhyIb0PwWckCvgioGcXGH7aB7Zwl4puyqRfKvaKSW
         E7Udmh/8/JKuUzt3dqtAgyLXK358DMvU9Kvuqcv/+ZXHXJXlzvqUaBa7fCn9+MpPc3lV
         9ch9AW+yOUH6LZfXXFocEbwVCyzOQy0TLLrAwGW+z+5CjIi7Fq03fYFShXf9B884wcTO
         VJfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mQ1qTJd/7gpx5R+qyk58yFs2599nQWgpkJKUVVM68n0EW2/eR
	imutxcM+TD5a5bfLJNPaXiI=
X-Google-Smtp-Source: ABdhPJw54uXtHJcRynIH1UlI2go7Hx20d7MeLjLMDthwZBVWjoWzulBHqmsP8L5NbXlFT58dZC7q4g==
X-Received: by 2002:a2e:9985:: with SMTP id w5mr13723878lji.122.1608800139179;
        Thu, 24 Dec 2020 00:55:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls5772310lfk.2.gmail; Thu, 24 Dec
 2020 00:55:38 -0800 (PST)
X-Received: by 2002:a05:6512:989:: with SMTP id w9mr12217956lft.246.1608800138198;
        Thu, 24 Dec 2020 00:55:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608800138; cv=none;
        d=google.com; s=arc-20160816;
        b=FfyvAWMfLVkDnonT7QaNcBzPu3cDpMIzIXIJtVVGQZxApi+RZZn5cLmFIjIdZnL6ps
         JxKng907j7HkSbOtVGP/oiYCpT9l+KgkAcTNEdg2ea4/0L6/MamCHjfL9ishFVVsuahL
         qlYFed0rz0Q3/RTRk43D/h3DYfMH/IYpkmdC6veZIU9epbEfagZR6U2lc9X0UeAdP9Ls
         rySmKkwmgCS8dWRBiO+jElwIo9MNWo0KctITpYUDxF+pMCHxz+D0CTkV23FrnXYwzJnz
         aEXCIxqtgtxeQXZaTUKW4xY5zNwuzkRXNNvlx+VLX0s6w6/OtbM80EG2xFi2i+vOOEof
         Bl9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+Tza7xSUzo+dq1Adw8Luii3U8dAhT2UD7gbFs83zlx8=;
        b=EXXoVTzVLn9nhG1fLW74npRxMEyafqi8VR4HLvCJKwzP0539O5TDFJbbGN6jpG15re
         mOjAFUrCl8wjXknVmpCw6lP5Igc00wof/GWOqzgFfdTOD0SWyYDKTiUiwiHVqtVRJlXE
         PFhnoypRMGcMBhe4XU8kL22pRsUmLUb1z9ywidgPAEPxlnzbVwL8XBDnXOOXHtDCCjJm
         weks1Z83B208XDUGk8CqHHgmcJqwWHMrpCO2nIZn6RnBX0M2kaozhYFbAxW82TVDTyjW
         y1IMifD4ud52XDBIbFYc3mZTqbIJU0/S5D7ec8remmfIZyR7/Ao4oq1fc5YBSWbTaoms
         4f4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=PNfRnUo9;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id e8si1107596ljo.5.2020.12.24.00.55.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Dec 2020 00:55:38 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0e530094f4200f7ad20a46.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:5300:94f4:200f:7ad2:a46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 3938A1EC0453;
	Thu, 24 Dec 2020 09:55:37 +0100 (CET)
Date: Thu, 24 Dec 2020 09:55:33 +0100
From: Borislav Petkov <bp@alien8.de>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [tip:efi/core 3/7] /tmp/slab-258052.s:9870: Error: unrecognized
 opcode `zext.b a2,a2'
Message-ID: <20201224085533.GA5108@zn.tnic>
References: <202012180909.WhlTpWrS-lkp@intel.com>
 <20201223183606.GB29011@zn.tnic>
 <CAKwvOdkA+7AYGhPk_=FA6OPxeb9Wy7FA0_5-0KCJGr-wtn_nxw@mail.gmail.com>
 <20201223210405.GB28724@zn.tnic>
 <CAMj1kXG58+DdfA9RDE9gnELf8ZT0dTX+g8D+3W0pVM8RUSF_OQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXG58+DdfA9RDE9gnELf8ZT0dTX+g8D+3W0pVM8RUSF_OQ@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=PNfRnUo9;       spf=pass
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

Hi Ard,

On Wed, Dec 23, 2020 at 11:43:45PM +0100, Ard Biesheuvel wrote:
> I hope this report is not holding up the PR for efi/core?

I was just looking at that yesterday...

But nah, lemme send it.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201224085533.GA5108%40zn.tnic.
