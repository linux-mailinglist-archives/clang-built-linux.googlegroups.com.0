Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3EAXDVQKGQEO4HBDKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id F1555A60DC
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Sep 2019 07:55:56 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id a17sf9842808wrr.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Sep 2019 22:55:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567490156; cv=pass;
        d=google.com; s=arc-20160816;
        b=j7PwF6M4RHoht3KycBly+zGFHjvSpoOEmZRq2CXCqQcvruL0qXlH/Gd9IB6M1PrBc7
         uxFoFmqfAlO00QYd84oYcZa9bhSAXsOWUacTSXHtVGD4Mv01fXPJQwdMg9uMuDz4cdE0
         9fbS0DFqhPdz3/ryaCMnOLFIcu2cRjhbBZrOge3obMSDK+o1O29+kJK624oKH2l8G8Ou
         Fk/rKAPZ5onJou6v9NGmCo+ni8uFD7nRolKtGJ0eBiB8Y2VVP/A81QOtxYjh5WmSB13r
         naDtsurlda7R0OMTrHkSZ/yMWp0TkEPszWcdPMYPr3D3kJqNQLUcEFIGho6iaXuJm45I
         XqWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=vtpfNL0od3TLV0RX5uSFkSsG1SK9yrk4P1KQ5DQMoyc=;
        b=qFWCylkBPRxZiXKYMsS0xDEO2smdl/y7OdkPK/oaJD9ZUt/9HR1a33RTNga+zLgUSE
         gpM3hYZFy28g8jwjDmMEdHLjynCZCfGrYkfujmTNo7AZwpk3Wnfjjz7aUrAqdqHN24sv
         wTKBNiRaQ+AjQ2AE/JAOPI72AuCewJ9pHaz5jKrhGOvPbBumdZpyCIADm14k2tuszI5i
         6ig/66+w34RPqFuVjmqPkhdKNXYs2Gjn/EFlN0jCOX04R3TolGfnzvMBQlP8aIl2Yvvd
         pjw0TryGlmrc7dETaBcSPslqxUclm/3YflQ1RGmvXPyArSTc8ctBsVcM1BvWt8qlAkTf
         zVfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ys9Y1fQI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vtpfNL0od3TLV0RX5uSFkSsG1SK9yrk4P1KQ5DQMoyc=;
        b=PZ9fuJbSydbpU4JkoMeMm+raBALCKnJ11WmsC8S0bL7RiUIG54F32Xksiucqe2ve8p
         Owee+yVufViBG8KsF4nvBdXKw5p7b/C7G+btfsA9erZJrhbaMQV+cKAUCeKRFVKe1ozL
         NZDfihDsMxYm3yxyGYYOk/lwXHtzZcFITjvpJJObqRIyl/75s1QRcaDMcWmYpln/9b0h
         iCrHDCJU2us3Rf7qOlLOhfgDH42jrF6Su11splLPCzTAtc/s/mIvbaBVX0wQGHCY2HtG
         wcZposvkgwwp3yf9mO8L6vwtKG/o83VGicSuWGspvt/fy9sJvhtMN5vAX1jm/gQIF6ZT
         xXnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vtpfNL0od3TLV0RX5uSFkSsG1SK9yrk4P1KQ5DQMoyc=;
        b=DZmgNz9PSfVRRSWmNAJ3uQtZ5k2pWWVaHfHvfFGXpLimURRW7uc6opPQZtT5IB5Ffs
         wMaGQRzIRnVyOmAQ6hKiHSkiE0+HlmJ0VxbE5P6IAzxP178kJV1/cQzxj/LE4S4iST7C
         jPWEoz+dtFSK2c8UXyl509wJcSRrtOXRb5TLq0QW9Xfpk4YsEAiaLe9dAyHIw9Hg4x4d
         HUvvsMg/HgwBstXqTQ3qjoSVCrMCFs9DRIiuWZAOtK7Fn5oPxQZkgz7Vt5QoKN1SZaS7
         rj8iHdKIHaeu0jr882WyyGpupGRe01a+6PrS3OXemQzeTEjRbkCnb0Kk7cdzg+ScZ8ee
         b3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vtpfNL0od3TLV0RX5uSFkSsG1SK9yrk4P1KQ5DQMoyc=;
        b=dZAUm6zLIHrj+OPTPLY1Ffx5S6KJQCTPgXxGmicH/2fUdjgSZpscYLEv3H+EyzFQSn
         q3jZbCwXK72XfFISxJkLF+j/Z8JfyMECR+fhigeDdozUS/yk1d6lcIEkdZSzfU8xzwnG
         +5DWhunB44hI7TPJzBLctdJX/PtI9FkvKv+SggIc7q66cB+nlCxFHJFgM06WTHvxtDiA
         s+vsSRJROW+RVcdy3LO99Erx05AnMGj1z0cIBsDPsckA7DeEgdqkVkBS4/Vv2UjxNMj5
         1lHwqTc9bclE/CFNv6gO1v5xJ1iV2/cRU/xFfW+ufn3Q9X9NAxhIlCkYTKg69RLy2YcB
         kKkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX4JOhLykP6HrEPeU4GxblYM0CDzrWYxlVScyrAt6N952ilciS1
	bX+rAF4SPi8K1g/2kKSOdA8=
X-Google-Smtp-Source: APXvYqygmyizbJNAXcGk+BoOrPSCNXh5h8kMtd7FyopuLv2AytecpvhgpWAYWTPBlj8OS2tmOFloXg==
X-Received: by 2002:a5d:5049:: with SMTP id h9mr23660741wrt.101.1567490156672;
        Mon, 02 Sep 2019 22:55:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a745:: with SMTP id e5ls4583540wrd.5.gmail; Mon, 02 Sep
 2019 22:55:56 -0700 (PDT)
X-Received: by 2002:a05:6000:128d:: with SMTP id f13mr41629517wrx.241.1567490156387;
        Mon, 02 Sep 2019 22:55:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567490156; cv=none;
        d=google.com; s=arc-20160816;
        b=aIDa1vqg2lzOdOFByUtBMxHyaGhl/n+KE2XuB59lO5+dxzpulqn4OnjfRO+Wwneggb
         sPxfNvbWDTK7sugrL+NlrVadFogW5q3NkeQdUB3P2Hnq7bu2MY4iU2r/nohGV9+f1IDk
         rspLu9E5kEmvlJCrDUnziI5E2voVvk7FvWVkDc07lmwFtfd3T/IPGwOcnPFS6kJoR9yj
         KP9z8ziklpmS9C2gjSOpc/RS+wrIu625NL/jC/FDTDN9zqSbruNDcOc5GpXuMQGEB/P5
         6RyvzQWBkKVjKI0LMalsoSlKh30mPRybFRoK86G6JIHfsElde58llIOr51Vn7AjDlXl6
         KzPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=X7sSiUySVZV9o7/lrwJkuFeTAt0kOUYd/2rnVcX4C8w=;
        b=BVe6sVhtEf6A5kRfMmMSZwWLNGL3H0mPJ8QQsOjDEOK7AQflnMW03apozooPiciEaF
         9TE4JoJ56PvHqsiPXY42cNJ2sF3kkTDCY4tWl/6p1raZLGtQyqTS4w8NcIi5nPIC3JBe
         Gok6kll8oLBf1i4a2/swFvVGYmBlf4HopyBL6cPgJkU79Rf171eO9cWZPCuC3h7NLThX
         FUyO8R+V0u/aoMLZBl1yJhRwayS8J7nXJdb/xN+R9X3/pwU4Wnu+6PF2EhL8DVnhj5qw
         SHu6/muoVBLI0A2trTfWN+yaHXpFuArCX+PJ26zb1Rb5jisXayWpiOwfX5lGh01kq94o
         7Xmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ys9Y1fQI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id s194si973472wme.2.2019.09.02.22.55.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2019 22:55:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id q12so15935970wrj.12
        for <clang-built-linux@googlegroups.com>; Mon, 02 Sep 2019 22:55:56 -0700 (PDT)
X-Received: by 2002:a5d:6602:: with SMTP id n2mr10555596wru.317.1567490155857;
        Mon, 02 Sep 2019 22:55:55 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a130sm7848265wmf.48.2019.09.02.22.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2019 22:55:55 -0700 (PDT)
Date: Mon, 2 Sep 2019 22:55:53 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Laight <David.Laight@aculab.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190903055553.GC60296@archlinux-threadripper>
References: <20190812023214.107817-1-natechancellor@gmail.com>
 <878srdv206.fsf@mpe.ellerman.id.au>
 <20190828175322.GA121833@archlinux-threadripper>
 <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com>
 <20190828184529.GC127646@archlinux-threadripper>
 <6801a83ed6d54d95b87a41c57ef6e6b0@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6801a83ed6d54d95b87a41c57ef6e6b0@AcuMS.aculab.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ys9Y1fQI;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 29, 2019 at 09:59:48AM +0000, David Laight wrote:
> From: Nathan Chancellor
> > Sent: 28 August 2019 19:45
> ...
> > However, I think that -fno-builtin-* would be appropriate here because
> > we are providing our own setjmp implementation, meaning clang should not
> > be trying to do anything with the builtin implementation like building a
> > declaration for it.
> 
> Isn't implementing setjmp impossible unless you tell the compiler that
> you function is 'setjmp-like' ?

No idea, PowerPC is the only architecture that does such a thing.

https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git/tree/arch/powerpc/kernel/misc.S#n43

Goes back all the way to before git history (all the way to ppc64's
addition actually):

https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=61542216fa90397a2e70c46583edf26bc81994df

https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/arch/ppc64/xmon/setjmp.c?id=5f12b0bff93831620218e8ed3970903ecb7861ce

I would just like this warning fixed given that PowerPC builds with
-Werror by default so it is causing a build failure in our CI.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190903055553.GC60296%40archlinux-threadripper.
