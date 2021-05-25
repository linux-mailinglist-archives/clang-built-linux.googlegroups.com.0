Return-Path: <clang-built-linux+bncBCQ45GVI5EFBBDHPWOCQMGQE3C3QM3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 325753901C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 15:11:43 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id ep2-20020a17090ae642b029015f2a97b10fsf15038532pjb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 06:11:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621948300; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSm0OSQiZnr34IFKQQsEh2qrrXf3HwUz2bp19hlZHOszxhAjiFiXjytEULdj4FrMcd
         sJa+KHZqMb1OzatgcdbvxNGZ7lRkKqwYN6uTagYpSkh5Bwu9jEg0EyAB2NjggkazgcxS
         jsjpAfin+GnWUGNSTClqjm/5kglDSK6RKU+Xt1TXavv6oB9xY4NIYooNrVVAIasuKgzg
         PEmfMttXVRwexQyJCXXZdxL6On/vDvVhr/VM0aNsqTgp1K+JJYYqoKTAM21vJFj9f+2p
         DcT4BTI3dJuc8ZzA43PvRHAiv6A0BQ2hz6yybbO4KoOMdt9mt/0C94566bsbqoI1r5RF
         i3+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XDutqw9R+GzvCuEzyJExQCR8R0Qj8KeOG47YqKklyUs=;
        b=dKNo9DPYSB+CvXQ+6ihbkhtDibfW1eFsmGZPQrDbHaqv9NY8KAMwrPKEw4phlS3uEL
         2rPj5Vi7rFyyB8kuTxzmGUP63wQf7mJ5Tf0f6XcdcGT3AkwWdEAJ3/SDHxzB7/CPZ/GM
         0Kf2G5iQ9x6KCBdF9PpIfDiDi3x0Z1bVesqxVvuz20DWYP00Sc9LlthQSlvuXpRub8+f
         bVMedjriy+adnwqH6mdJOAp90cwbAIHLk+/9HoyH2miOmuXMxDAnHajgiN+bqo5xy1P0
         r/5erky3UvGaF4CrdeO9FR8oKA2DKhXleZVzu+RLDC6NFS7PWI+39HeQy6EMQbtH0lAX
         S/Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aXaYgSQI;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XDutqw9R+GzvCuEzyJExQCR8R0Qj8KeOG47YqKklyUs=;
        b=BzJ/LanjTuIwgajQp2N8w/Zvr1zQ8LjKh6v9waN+Nc2ai7UU0z0sw+T8vr3ZHuqHTw
         kDXQiDYRNHER52c5+6SVJNw2LPzev3MlLfX76k+0f+/vZFZx5lSJWYeqWggRZTTOgVGM
         O+mRHWIe1ALiMRIjJjv9TtnSGwBsbmd52ZOfnyMWIlE83hM2z/FW1cSW+BkWgA0MSStv
         4x8Dvk8eV/2J/wuDSsUfDM7FrfZIpQAyuVB3QqyOYyRrtucOzYSZ5yFsPd5EHLR9SDwH
         UmebHMJaT9ChA0HTX8BNjZJrX6H+X+mxSboqIY5P00YaMUdCFEs95tYrDi1otro67SOI
         /aVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XDutqw9R+GzvCuEzyJExQCR8R0Qj8KeOG47YqKklyUs=;
        b=cT0X5bkaV+/O12cvKVkfQ4Ek0c3ibiOuF099dgiQLZKVFLTedUun5HzfJOiRtuk2ms
         81FJz7i4MojGyrAeUwjIz9fehA4i9WsGrJA2Uztnh/ArAZdKruQnGQdDP1d6zdf2bbg0
         3fntXA937b2T6FIiY4Lqz72esJUWaf1ns1ewWUWgicjwoLCFNAC0j12zcJ7GZNsuctTP
         8dRN8K8xxEyBABCsHeQYMwpH+/d6+BU//PAKJp+UGXNosicgA6OY3ZtVZ4rAxu1TRkr6
         lRbXwa4BshAQTcY41uo/UJOylsE0xn81LBtZn81ix5wTWLFNKjTXZmAQcDi1jpFOy8Br
         /Aqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XDutqw9R+GzvCuEzyJExQCR8R0Qj8KeOG47YqKklyUs=;
        b=tZOUlVnTatE5fuyaJ23tZWIAvpg1hRipkt7b3NDeY7T5tuDVg8gS22p2FGuYAW/CpR
         FqOcRY2BehUslaxPn1IY364/V2TrzUGkyYIIEvk2CaaW7Bgf2KXpMPuFCV16/0uQ2fNp
         Qo0QV1uZtpfJzpgGR89PI4vwgnFVjrEvEtZlVrT2SNmhpsw0mY8eFwAPfGsKAuXFl4bx
         rHhx0tBtuxP/LLe34aA2cYCuPf/a8/CuvK+/FFktn4HQL3n7ZTDqkh3cxYc5pG1v0HKB
         Lr15wcb1xBOYO+/bDuQNxbpEr4RbMQ4WdJlKfJnOz31KF6veo93hQbPlwanzRKnr2diU
         2TeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336khI+DNPfX7LPqitQQJG9A0CJR60+JEsa2fonVou20FP9eHEu
	P9FZiKu6NhY9Cydqk/S+AvE=
X-Google-Smtp-Source: ABdhPJwsWxDz6W+Jfw5JgTvMYP0XZR+g3HWP2BukosTMoPkr/HYfp4TQ7ViR1KnxKGMMFnPx24TDew==
X-Received: by 2002:a17:90a:1b45:: with SMTP id q63mr30907360pjq.195.1621948300753;
        Tue, 25 May 2021 06:11:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2284:: with SMTP id b4ls4659479plh.8.gmail; Tue, 25
 May 2021 06:11:40 -0700 (PDT)
X-Received: by 2002:a17:90b:1b4c:: with SMTP id nv12mr30224362pjb.55.1621948300148;
        Tue, 25 May 2021 06:11:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621948300; cv=none;
        d=google.com; s=arc-20160816;
        b=RtQO//FIT6LBYGY0flT15sZ4om6m4/MdDann2yqnWEtzKxCfoXb3EgM/xJBR9EHi6K
         rdTaRXvJ1IQAShXXEuoNY2De11gFl3OFJI6z4DD2ybLCmU7bJ5+4Hq5J5kLcqmRtpheq
         reIvnbVg3eJYjNTRHr0FkTOAJwowO81onf7YL9o19F8SQdox1yRCUdQkWNXoQP8+EYVq
         NpK/KwwTyxDUjg0JHhkiID6FgIN9I+FfBo5HL+882gzzgmKbbxKsisNR2rePTCMHgtc5
         wGrnaeXFg6n9eAxE5dhyNjgIUB0hT9p51W+tqFaZzUYcKUTpFccHbQVweBj4RIKZXZLw
         PGGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/PFVsPOHgJ97hXva08hCaidxRFtp/e8m6uT8+4/8nNg=;
        b=Cjcq7AII56NBpqLbTLu8w2ReeqQT0wf9uYWqjof4BbAr8mdBC9HYPcR7YLrjImh4gl
         HcBxhhmxpKXTn9leAoLzZJ1TQgd944nmLYVApIStbyu0qohG/wNlCwKUNUDujZpeKncu
         l9UtFbihPmBB2+9RiJ5V4cf8bED5oRAydXgrqM+dzpSqtPhWNgdcX5jMvKzrnzT8DLao
         keoakZkDoPRmGef1izqqfmAkZHjXzGv6Ely5uFNINCQLxz6YJPZr3dPn7TtvKz2XHWSV
         f6AEZ8Q1GYrQ52Fr7/AYH7pVi2yBP4d4OngZPf4q4OtG9quFcvt4Jq4IjaN23nB3DHSS
         U3Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aXaYgSQI;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id o4si1499119plg.5.2021.05.25.06.11.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 06:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id b13so41517637ybk.4
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 06:11:40 -0700 (PDT)
X-Received: by 2002:a25:4d56:: with SMTP id a83mr38354334ybb.437.1621948299686;
 Tue, 25 May 2021 06:11:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210525122615.3972574-1-pgwipeout@gmail.com> <20210525122615.3972574-2-pgwipeout@gmail.com>
 <YKz1R2+ivmRsjAoL@lunn.ch>
In-Reply-To: <YKz1R2+ivmRsjAoL@lunn.ch>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 25 May 2021 09:11:28 -0400
Message-ID: <CAMdYzYqHYu_aMw+EjeFP70HnbzJfC6md1fMT-yx0cs3MEF12ug@mail.gmail.com>
Subject: Re: [PATCH 1/2] net: phy: fix yt8511 clang uninitialized variable warning
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Network Developers <netdev@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aXaYgSQI;       spf=pass
 (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::b2d
 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 25, 2021 at 9:02 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Tue, May 25, 2021 at 08:26:14AM -0400, Peter Geis wrote:
> > clang doesn't preinitialize variables. If phy_select_page failed and
> > returned an error, phy_restore_page would be called with `ret` being
> > uninitialized.
> > Even though phy_restore_page won't use `ret` in this scenario,
> > initialize `ret` to silence the warning.
> >
> > Fixes: b1b41c047f73 ("net: phy: add driver for Motorcomm yt8511 phy")
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  drivers/net/phy/motorcomm.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
> > index 796b68f4b499..5795f446c528 100644
> > --- a/drivers/net/phy/motorcomm.c
> > +++ b/drivers/net/phy/motorcomm.c
> > @@ -51,7 +51,7 @@ static int yt8511_write_page(struct phy_device *phydev, int page)
> >  static int yt8511_config_init(struct phy_device *phydev)
> >  {
> >       unsigned int ge, fe;
> > -     int ret, oldpage;
> > +     int oldpage, ret = 0;
>
> Please keep to reverse Christmas tree.

Ah, I missed that.
Do you want a v2 or will it be fixed on application?

>
> With that fixed:
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>
>     Andrew

Thanks!
Peter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMdYzYqHYu_aMw%2BEjeFP70HnbzJfC6md1fMT-yx0cs3MEF12ug%40mail.gmail.com.
