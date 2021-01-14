Return-Path: <clang-built-linux+bncBCMIZB7QWENRBMHWQCAAMGQEKQKR4MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5B32F6119
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 13:38:09 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id c70sf3263796pfb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 04:38:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610627888; cv=pass;
        d=google.com; s=arc-20160816;
        b=qvDPh+45e8R28zhCT+4sYFIHeI+HASqFgUrzcnAQw/wLlgvmD8V/1ntXDjHh0tRc+g
         FIiHdfRlBuny3Ft8rPdQSmJ8EdEH3uHXCNnw9STR2O9L7q9pvVNbkkJCsnD6c+dBArUT
         OIx39+uacgg7JXID9DwtIac4PpHQlqlepPF1ofC/F6Ty1bV4z5zfiX1oULfpiFV/fSIi
         ool+zHiWlJUPib4GLEOOvghK2rxfHGAk0o6vD1FEXDB6zG2+J5S1DzNuJGFuMTHTpi7c
         NXhcx0QUPTbhind6beJnky77G+ergas4HW0Jrdmav9hZ081Xok/iaKE9N9jP5IFJJ9wS
         6z1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VlqfXvuVZEqeXCyw7BmQ0CGhmMMESs4y+MpUAldCTwQ=;
        b=hOkEngRMYjQpNfeu1j7qpqHD4/S1Uf8KTWRKYzpdPHp1oEQE6gJ8P39jBMCydxYvQp
         CPxNmgWRYIgtgf5Da4o7kC2QddJNQtfI0mybRUjCk0wDK7RgMFxIwyBU5HeobIUQVnqi
         PP/tSeFoiIs87PqyirAtc/6bGjjrTKJllU6NM20FhmQAgdXED4CBOCuPtayWRPxvoaq7
         vS6aFdAiob+tSoLcXPfEyKNox2C38qXKtyOa+YmRTzvbuadhzTh+maiGN0qZmpeuu7Db
         Y7u/xd7wrygDqXNFF/5pvpu0Vdyv6c/t56wtd9OdF40m0tRva3XQ5soOv4cAbWcyktPk
         sf0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Xb/J5GM7";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VlqfXvuVZEqeXCyw7BmQ0CGhmMMESs4y+MpUAldCTwQ=;
        b=I3YYI05VFV4OPJ/5y/+YBb810o12pdMv/HnqoVhACbtFN3SukEgpv7hc8Exno++F8p
         jqV1wyf1nxjZGbveb/0ttmE63eolD0ZPwtASvk3YXA1Jw1GKSVc9Lfhv7cXasl60FWwg
         gCDInZSG7kBBdBh534Id6vMYOfj8kYuIaz/s7bFv1i40n8Lqylajn6oYvyquk52Kfip2
         OxiEpKvuWZZSTEvqv7YISj7lIoG38S9Mn7BrXQZrp1QJPM4LWm5QJyVK478nfpbfBT5v
         3dXJLacddxUzPYbRCGDvsEWbdg18vljgRadBJAgr1Q3fJgD1BdXee4nU/nJlmsJANtd6
         Ps+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VlqfXvuVZEqeXCyw7BmQ0CGhmMMESs4y+MpUAldCTwQ=;
        b=d5TMUp8KrAzTQmORzTy9kCGyCMXty3rYFBGBnEU6Wr29iMr4n7rwcxpLX2w4d1STUt
         yHs82NlsGY50HFyluy+wQkl/TclohRAFDjJYAInO5+NYePpmdfRUS/NCCJNn5FRqgsAS
         anRqBNhqzZx7al2aeCuOo5ubHlYiJzPTFuWaPKsz8JugYo2UrZJq+Vebp7jNTBPAbL8L
         sNqdH+mR8KbCoemqNz+gys4rRpRAfS3MSW3wYhihUEIpKWpeXGOMmEngpIzwOnREgsuG
         7qsYCqy8VcB7mbrnRmSOdaOr7KPWwC5VR/TxpdsGXWYchvYUmWfq752lJGIonarzDJKp
         Cu+A==
X-Gm-Message-State: AOAM5324R3gVgWd3caVryycA0bdbGfVXVc/IPWW3wtOnvKCaFHhpJTMS
	1s1AQTctbqNDWy93k2DLpmg=
X-Google-Smtp-Source: ABdhPJwj1orBE9i3+qKHu9he9sVKRzU6Q4ttKXnCc+ZNci4eG6Ml2ZH9BgLd8y4VF/doP1JZ68Vewg==
X-Received: by 2002:a17:90a:b114:: with SMTP id z20mr4747926pjq.14.1610627888250;
        Thu, 14 Jan 2021 04:38:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4d4f:: with SMTP id j15ls2203775pgt.11.gmail; Thu, 14
 Jan 2021 04:38:07 -0800 (PST)
X-Received: by 2002:aa7:95aa:0:b029:1ad:d810:42be with SMTP id a10-20020aa795aa0000b02901add81042bemr7376417pfk.51.1610627887611;
        Thu, 14 Jan 2021 04:38:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610627887; cv=none;
        d=google.com; s=arc-20160816;
        b=Qfyz+BH6WtMcuRIW/oA9aMxjzJ4SWMJk1Uk3lpuWYvM99aL4Ns8qlggkTVy9dZHaIF
         W9Th35EzCdOit9SNC3SgIYHj5HpxGiMGSCXwBh/bfvl3evboocD85NYeApCZ2JU3I6FY
         acl0ZaNC1P4lo3Pz2GWStKFmek+F4AhW6IuNj2ssc8e2xrJzqX72k/dFHP/IzxB97dRn
         q7d7qw2p6OhE/J1OLWgTkUm42dEK1X3gSNr9FHPA/iqcf4wWOPdH032YHs38bbL487Sk
         oqc71YNm6Z3BbdGlca8JqwJ5XqOIJwa24es3asS2N2rAp1fN/Ml0ERmDGyxVsBDGvDri
         RMMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bajNdX3QJ8WPiUZ2vxCgMPDafFzrvEmZW/ftJU+bUt4=;
        b=cz1fLvtkaRKjF42F0WGnjWIjQRusp8GOAm7l9t/tw8B5wGfbHf6BsE2jkClgb1qA1m
         rPCeAqc3YAFabRTegk4XQRJqLeRw4dOtw2d4Zu7CliSVsVk+g7LjmyVVT6b3vCJxlfOi
         zduz5433iCszhH0iLgeIw0Kl1Gx/hbSQoqdGDY/BS3MSK2T7Kxo1uyj9gSlV5bkJkLda
         Oeds7Ov3ZLEW8H7+GYDI7B4xHkAkDfu1Z2+tyLv2MLFdgLZZ3yZ6BXBecTsQN5fKQA4Q
         7YFVKlbiEtL1V+tSEt8qWj3xp6BFhbH2+XahNQutJ3TfTe6zlRDYZj47xroR9bSUH8Sm
         eKXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Xb/J5GM7";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id z9si400419pgv.2.2021.01.14.04.38.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 04:38:07 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Received: by mail-qk1-x734.google.com with SMTP id 22so7400314qkf.9
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 04:38:07 -0800 (PST)
X-Received: by 2002:a37:4285:: with SMTP id p127mr6561914qka.501.1610627886555;
 Thu, 14 Jan 2021 04:38:06 -0800 (PST)
MIME-Version: 1.0
References: <0000000000004a33a005b8b8eaab@google.com> <20210112194058.GA200254@ubuntu-m3-large-x86>
 <CACT4Y+YFZf=BnCQJQUYwG-UpaYKG97VD-XWpEdXoR3ZnOxH5NQ@mail.gmail.com>
In-Reply-To: <CACT4Y+YFZf=BnCQJQUYwG-UpaYKG97VD-XWpEdXoR3ZnOxH5NQ@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 13:37:54 +0100
Message-ID: <CACT4Y+Z-f+r_Bm5RD+ZFrspHdVrDrzPgEB_9_uACa_8o4vz7aw@mail.gmail.com>
Subject: Re: upstream build error (12)
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: syzbot <syzbot+76880518931d755473cf@syzkaller.appspotmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Xb/J5GM7";       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::734
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Thu, Jan 14, 2021 at 12:32 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Tue, Jan 12, 2021 at 8:41 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Tue, Jan 12, 2021 at 11:20:27AM -0800, syzbot wrote:
> > > Hello,
> > >
> > > syzbot found the following issue on:
> > >
> > > HEAD commit:    e609571b Merge tag 'nfs-for-5.11-2' of git://git.linux-nfs..
> > > git tree:       upstream
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=15965a00d00000
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=6157970d0a91b812
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=76880518931d755473cf
> > > compiler:       clang version 11.0.0 (https://github.com/llvm/llvm-project.git ca2dcbd030eadbf0aa9b660efe864ff08af6e18b)
> > >
> > > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > > Reported-by: syzbot+76880518931d755473cf@syzkaller.appspotmail.com
> > >
> > > clang-11: error: unable to execute command: Aborted (core dumped)
> > > clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> > >
> > > ---
> > > This report is generated by a bot. It may contain errors.
> > > See https://goo.gl/tpsmEJ for more information about syzbot.
> > > syzbot engineers can be reached at syzkaller@googlegroups.com.
> > >
> > > syzbot will keep track of this issue. See:
> > > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> >
> > Would it be possible for clang-built-linux@googlegroups.com to be CC'd
> > when there is a build error and the compiler is clang? Especially if
> > clang is hitting an assertion.
>
> Hi Nathan,
>
> I am adding functionality to CC specific emails on build errors on
> specific instances:
> https://github.com/google/syzkaller/pull/2388

I've updated configs to CC clang-built-linux@googlegroups.com. This
should take effect on the next build failure (hopefully).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZ-f%2Br_Bm5RD%2BZFrspHdVrDrzPgEB_9_uACa_8o4vz7aw%40mail.gmail.com.
