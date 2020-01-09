Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOGK3XYAKGQEUB3FZOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6D2135F75
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 18:39:05 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id t12sf3342134plo.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 09:39:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578591544; cv=pass;
        d=google.com; s=arc-20160816;
        b=KDS2ZRXjaHCffuWN6S+aL9nqm+y8pF26U80leSAlyF+HN7cvDTo01izZrThOd77pKk
         m2InMosWytG+jq7L5TV9DZGCJKWfsP9gEDm7PFDGHFO8OHKztH/7soJy2M+c/0DWT9Vy
         kkf96B/jBZdtnQNseoVzJdyY+kePc5b3OHFCFtacXNWqMoks3L0NLr/Ns95D2ubQsfBQ
         NkL0tsmMRDlUAJbzEHHHF2nfGILAcxvmHMmvJ9J9QWW40+TrYmZyKUO0eyrTYs4TopSb
         j39IvO2ZOCob9hladTVwWlqQJ2tyLO31zX65MpcTLH3G0zS6xPpxQx1Q/LHfVKL1mEdA
         SIrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=g7K5W0RwDrPsHCoxgJxe74NcWWo4NxJm0XckaYFBmpo=;
        b=kdsh0ekzw2ZdrHJOKwXZErPunVpiQx1XtMVN64kULOdlP4+Gl/xK7LzIpZW1wNZNCE
         WHDKNf+o74JZuDOhiNBsh4vL5M5dZLBxFQDcOsN/+HMwRCVUbFXatnY0ABxo7hg8zAUB
         tyBCl5Mn8/0hqEpqo4dtSJAS7J1iK+hjwQp51Z4wPbYo4vu/2u9FBNjRbsq1YcMYAE1Z
         RfUG3Wy5My3hUTlf4IEAylUdGha/Vf7VaYuFr3U9M4q7wpdwQ0AyUJo6nEVRok6M3HKH
         zWj/gduX6f86cWP/+i8S/QsTzfmkdxCYeCrUhJ0eANaTTqtpHr8y7veHyxTie9HOW7Qi
         ATzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O2I2NOfW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g7K5W0RwDrPsHCoxgJxe74NcWWo4NxJm0XckaYFBmpo=;
        b=JW5PJODlT5choy8IgOB6b75YkBwx3cbcW+QiEaQZB/5/aiD/yvs7GwjXJuNR9r6los
         K+TgZmdWxn8kMsVLXaCmCks9R9feiq0EnCD0x5AFr4YdoSAlRATGi3CMcXpcNIB860gg
         BqOWOwom30M6YUiunnNN48l5jNqeaeF9Gg5n+9iUHRWQoxs5l5DbF118S5UjAxSnO1h8
         LNWaRmhTMIxzk8F063MqZkJ6IIG8Z2jFi5qA6BEf5qS64IKs/81A9hjEF0QtapB+yO/L
         3JKTgvG93vwwIWCsf8wI4PgTqTJz8iOfbD/bzLHKO4l/hxUn6lSyAy4BvA1cljVej67G
         jVeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g7K5W0RwDrPsHCoxgJxe74NcWWo4NxJm0XckaYFBmpo=;
        b=QAcBq6CjRwMjca/xcY72NjH5HPoWa9qQH5K+RUMTUp/8YdhT4WTrVLeOKz1sEkQsre
         v8SNITDE5VLM7Mr/DfviVgnrFk+gxECIEcB3ff81u5SESm28skuJTaaLQ8ZMXYyR3baZ
         8CoD3pc1uh5nuN0yz1aGeehz7tzgn+irEo2hKNf9D5Zd4u9+tGX5xZcA2UB7hrikhKmN
         uLLFiBKAgp4a3oocCQv7fJw9wkgoEaiG2cJrPLjCF3EnMP5xn3kdCrkDQOag6EQcAGTX
         laXy3Djuyq0xMLW0h2E3Bzt+oVwE9UhkTl/Wth4FJcj+wq7FWZEwjIOck3CyOrwuFvpi
         iuKA==
X-Gm-Message-State: APjAAAUB4AbndSe8oGddydKnpN6mrbvxH1DzNeuRj2Vr5edBu15Er2rp
	28m/miQGGaTZUp/7zgClBUU=
X-Google-Smtp-Source: APXvYqwK1Tm/IyHkRU9px7UuLtYdT0D8asRnp+KeVYpEJjfGVrfxku14wMw4dcpJGRhLp6gBRsITwA==
X-Received: by 2002:a17:902:a5c2:: with SMTP id t2mr12916364plq.86.1578591544291;
        Thu, 09 Jan 2020 09:39:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:93cc:: with SMTP id y12ls792702pff.7.gmail; Thu, 09 Jan
 2020 09:39:03 -0800 (PST)
X-Received: by 2002:aa7:82ce:: with SMTP id f14mr12465535pfn.167.1578591543859;
        Thu, 09 Jan 2020 09:39:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578591543; cv=none;
        d=google.com; s=arc-20160816;
        b=tLlkQ4L8bbllYKM+QajpgDzno/pvI9sFnR7q1MHeX5IA3Xr7BcibWzyqOsxyiFI+lL
         pH+5qqs2XpdjqYQF+IFbU6FWFsLdPqkfFt4pAV4aI5o+WxiwsKCrN0qCMpegxn0v+U+w
         01bRqPR3D2A1kECMrtcM8UNosJxis9RqINsn7UkhhFzRKX64G4GGA5Ji/t9D/4IVOAWb
         gWL8FDIXVW0eOD1n54SCAOej6mIxXQr+c95BesKGB8QOuVE2v4NvFJ39YPhJtSIXOgor
         cKqdwiO8pqvwA+dwIV4YgJDCGTuguMoCM1MmSEGoaIxxukMdlbLQpkE1rEbfiSrBFqNT
         OHTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MSJaP50tcbssCy+wUHSI0wzNq4LNnMEZ5ONXZaI5D4I=;
        b=f+g0U/hVqJeLfO+D1vghAnC/v7J7neJptUwZdJkhoU7Z6G32waEuymaj1FxTbjhABh
         avgUm6Y82GX5BqJoXkaqPn1J8JI9dDMwneoTzllhwP5DOqk7XRygRsqpQVZ5Ys9pC/2u
         qEEzkzj/eLr7StxKbg3N6d0WfdPNQ/bDADN6UR/UTvyWL2PlKA+lxibk+HPBXJ0cV18+
         jlO0VT6PW4VTJ9IOzZqTa1cyA+PeBvHENEsZ/TLiYxP7RGIIxOFJjqBR0Y1LYpGJqh2c
         74wocCdMBMUhXiCd1UW+96DvCCXNIlknICjkSUCWqR1UNfurOgSl4DNOATH2asG/5vFV
         kzsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O2I2NOfW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id a4si75254pje.1.2020.01.09.09.39.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 09:39:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id p14so3698865pfn.4
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jan 2020 09:39:03 -0800 (PST)
X-Received: by 2002:a62:e215:: with SMTP id a21mr12577184pfi.3.1578591543402;
 Thu, 09 Jan 2020 09:39:03 -0800 (PST)
MIME-Version: 1.0
References: <00000000000036decf0598c8762e@google.com> <CACT4Y+YVMUxeLcFMray9n0+cXbVibj5X347LZr8YgvjN5nC8pw@mail.gmail.com>
 <CACT4Y+asdED7tYv462Ui2OhQVKXVUnC+=fumXR3qM1A4d6AvOQ@mail.gmail.com>
 <f7758e0a-a157-56a2-287e-3d4452d72e00@schaufler-ca.com> <87a787ekd0.fsf@dja-thinkpad.axtens.net>
 <87h81zax74.fsf@dja-thinkpad.axtens.net> <CACT4Y+b+Vx1FeCmhMAYq-g3ObHdMPOsWxouyXXUr7S5OjNiVGQ@mail.gmail.com>
 <0b60c93e-a967-ecac-07e7-67aea1a0208e@I-love.SAKURA.ne.jp>
 <6d009462-74d9-96e9-ab3f-396842a58011@schaufler-ca.com> <CACT4Y+bURugCpLm5TG37-7voFEeEoXo_Gb=3sy75_RELZotXHw@mail.gmail.com>
 <CACT4Y+avizeUd=nY2w1B_LbEC1cP5prBfpnANYaxhgS_fcL6ag@mail.gmail.com>
 <CACT4Y+Z3GCncV3G1=36NmDRX_XOZsdoRJ3UshZoornbSRSN28w@mail.gmail.com>
 <CACT4Y+ZyVi=ow+VXA9PaWEVE8qKj8_AKzeFsNdsmiSR9iL3FOw@mail.gmail.com>
 <CACT4Y+axj5M4p=mZkFb1MyBw0MK1c6nWb-fKQcYSnYB8n1Cb8Q@mail.gmail.com>
 <CAG_fn=XddhnhqwFfzavcNJSYVprapH560okDL+mYmJ4OWGxWLA@mail.gmail.com>
 <CAKwvOdmYM+sfn3pNOxZm51K40MjyniEmBvwQJVxshq=FMaW_=Q@mail.gmail.com> <CACT4Y+apeR4GJdS3SwNZLAuGeojj0jKvc-s5jA=VBECnRFmunQ@mail.gmail.com>
In-Reply-To: <CACT4Y+apeR4GJdS3SwNZLAuGeojj0jKvc-s5jA=VBECnRFmunQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Jan 2020 09:38:52 -0800
Message-ID: <CAKwvOdkh8CV0pgqqHXknv8+gE2ovoKEV_m+qiEmWutmLnra3=g@mail.gmail.com>
Subject: Re: INFO: rcu detected stall in sys_kill
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>, Casey Schaufler <casey@schaufler-ca.com>, 
	Daniel Axtens <dja@axtens.net>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, 
	syzbot <syzbot+de8d933e7d153aa0c1bb@syzkaller.appspotmail.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O2I2NOfW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434
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

On Thu, Jan 9, 2020 at 9:23 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Thu, Jan 9, 2020 at 6:17 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > I disabled loop unrolling and loop unswitching in LLVM when the loop
> > contained asm goto in:
> > https://github.com/llvm/llvm-project/commit/c4f245b40aad7e8627b37a8bf1bdcdbcd541e665
> > I have a fix for loop unrolling in:
> > https://reviews.llvm.org/D64101
> > that I should dust off. I haven't looked into loop unswitching yet.
>
> c4f245b40aad7e8627b37a8bf1bdcdbcd541e665 is in the range between the
> broken compiler and the newer compiler that seems to work, so I would
> assume that that commit fixes this.
> We will get the final stamp from syzbot hopefully by tomorrow.

How often do you refresh the build of Clang in syzbot? Is it manual? I
understand the tradeoffs of living on the tip of the spear, but
c4f245b40aad7e8627b37a8bf1bdcdbcd541e665 is 6 months old.  So upstream
LLVM could be regressing more often, and you wouldn't notice for 1/2 a
year or more. :-/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkh8CV0pgqqHXknv8%2BgE2ovoKEV_m%2BqiEmWutmLnra3%3Dg%40mail.gmail.com.
