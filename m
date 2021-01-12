Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXUO7D7QKGQEHD6ZD3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5FF2F3B83
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 21:32:31 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id y197sf5081513iof.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 12:32:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610483550; cv=pass;
        d=google.com; s=arc-20160816;
        b=ur5GWyh6BGlKQxm6o8hvG7T+HQ3Dbjl7ARrzO8BmBDUCA3eKT9xKhv+CSks9dBvxQu
         dsb5+GMA9E7Ppf6b+e4JvTLP+PvCdo4gUTDS71clEF3i1D7S2X51mAI/FNNrF63XwSbg
         VY/N3RoAZGINQ0V+49WCDxyAPAgRMk3Sq3COfTTmKVn9pVYz3klg/ix+4RVqSmlMIR4V
         TYSX0fKd8PFUxoi1jXiURlTXjEk/09pk9HUwRCoTJcdme16MA0UybC/FBz8U9l2HcTCW
         UQRfkTlz1FHV6A4U4w/UdfAP6Yflc0bxE1uTxKCEZVEqwSaPatVCppTxAhtyX6ua0MXE
         mxzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ogvQjSjjhG4zsF4HzgtwDwuzSR5BNGr7nRrFqvzIIBw=;
        b=dt0pcZ6893GaZq06GbICaRlHSyNETxwoMKkve8gFsjsc1/aBQyWRU/TU+Om6ButWfc
         ecHXLsMw6mn8XeWzj3VU8dOlINIi4dOTEbArI4AiLEDPuE92eSh2WTdwmEf8uCgP0LDh
         1N6AX70Din9zfH2sbkjLBgQCmJEcB4wbuphuosWzeJ0QiTqBjfnL4CjQTMLqgUsyZu+n
         N7vJoGUkk5Lvl/SPZ+SkqZgeWxSO7f/TMJQ8gGg7xYnKdUR3yk39MwmMzahL/zHZMzTi
         xfIdDdox2wHrqLCX1voa6jhMuz9nhh9v5SBdLk00TgUcOgDxzcNZmuYHYF1ugHFZ1uda
         JBoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m49sd1Vz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ogvQjSjjhG4zsF4HzgtwDwuzSR5BNGr7nRrFqvzIIBw=;
        b=C+4nJrwjzNEDc1UlDCoiRty7F2nP1zAx4i0D/T4TMDGWsRXoEmsenmyJPrEQisvz9d
         AVxNHPM2caK26mupuPkEz1olFAUXdJdeRmozGq/mMngQWCrnnsqKOKQIqD9ar+mH8pN4
         Ix6MyRNmzdaa5WohBMeDJhji6MnmST3OpiFWdTdEZ1hwJ4UgE3AmUB6YOj+PeoEUcvdw
         n+mc2wcMxKGLekMe32tGHNte7td1zj1SStXuTzAytmzkx0zbG2tD82I+OXIUA7PWhQvE
         2AoL1Xm1Ghqiln0vOlZxhNaejdMqNbzuhnWrQqtOk9CXHx682y3KkItP3fZPFwqKFAW/
         R+8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ogvQjSjjhG4zsF4HzgtwDwuzSR5BNGr7nRrFqvzIIBw=;
        b=c5+qTAyHQMOWmrBRd0XqnQN7f9lZ23ZAyhG2RqowQioBzefCXk53cxl4usy+zcc+Zr
         TQA0OMAixkgqv+yvZZquafLiJV1uE6ks+G9yJX0x5mYZ+gnHZc9Z38NytyDPbSGbPu7m
         eBtP0YJCUxj8uVM9VFylw8F/hmrs5vEUEoo3cr0jdHMeYyC5TG+0RmnUbEkNVvklUeuP
         seluSNjocDfuSZu1yoXGV/eX8ITAeTnGabURAOUQU4ClCuzDEaOTyVcPnCyppUOUbqEW
         w37YMWpj9Jo/stI3P11wYtvVT+AOy/Orwkf8hjgjnCS1HVvgm5SyuAtlb161qpZAv9Nk
         4Tjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ogvQjSjjhG4zsF4HzgtwDwuzSR5BNGr7nRrFqvzIIBw=;
        b=XNmFocDzy2U9Qz3yiY+h90rpnXrI6xxJ6Op4IhWFT418QskU0l7TZR+NWMhcdmKgra
         aPia06aNLnT9rc+mtyELWttfhRYEEy8FnuPurxMvoA99GUCBo/jhy1S08YHEi2HqpFJr
         RtNy7x8pJbjYPA8JFyZlVz1UDzpGp0hYeuPIsNVDCNE99u7WSJc3OSt4In31F/P1/TEJ
         a/601gbZY23hJS+8lP1PntgQ4CpGGjdJ7EWRKfdiLQSurbwbspGpwVkay4d6ZaJsCrdJ
         ltfoqbE8mj2F2JWHt5S1fUJJjVVgiwdm4G84WKPBGVmoE9vPXzRSsZfewRvWNKqr6fGz
         Zg/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vhjwlNAOMXJOP/DBNPR6rHXOayJPv/82BL0mVdAjeLBTdkhF1
	AYeDvYeU+LF9DY1Rk4gXWlY=
X-Google-Smtp-Source: ABdhPJwEDh1wj1Pe5FM3iJzu+ox1j8bbFskCVEexHSrxcypDDmBhh5NLCiDhxOKCIKTnLbgU8hY7Ng==
X-Received: by 2002:a05:6e02:1187:: with SMTP id y7mr851782ili.143.1610483550288;
        Tue, 12 Jan 2021 12:32:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls797393iol.7.gmail; Tue, 12 Jan
 2021 12:32:29 -0800 (PST)
X-Received: by 2002:a5e:9812:: with SMTP id s18mr635593ioj.138.1610483549790;
        Tue, 12 Jan 2021 12:32:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610483549; cv=none;
        d=google.com; s=arc-20160816;
        b=SpEFrszod7Y9kVefRlc9vwMA3sC5NkJ90qgJlw63dajWOnhV8e3z/PrT3++MS036AS
         0FpHkAMgLIuH3cZg0YUzAiLhvope2dCrwenVZUTt31VFKMM4Iu6lghoEuDq6UbrxRUjt
         ja1kO91ShQNYnadREyv8PtvVe/c+qigiY1zdKJDE0RzECcaUYKZSA2B0HNctFb6HNmLv
         9c7Kx9nU5FcGhF2jogrOUeAIbtPkPxX2yanj4eimQcan/SK6OFsaezYDTGuWjEfcevZQ
         /fQINccXOdsfWhE/ln/EICgOxBOckHJv7pasFSdTBV4LEiCpKl6StatjSEOMllgIboRJ
         /fJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=btCnt2sQ0Zcyyo8rzXgbt+j/5gYam3eBNLgnqdULuEc=;
        b=YVoH86TaU6WoZM7YhoVDlXNKy47bOENcJNkcQieD9souWLJOBer2mifPvx6+eb4uzu
         zJQZKl1D64ZAnZ7XEnBq2MK/i0Md4tuTyT8ocRJC5efxTrfkv5Y5CTfJ/17ksk1xyJa9
         0u2AO7akWrehq/v0TBNoGmtmXuveGZW6QJ4E3LxmMFI82ywxDdOaFQzLMgABb+BNXgZ0
         lEvh9jUEYC0lxbmvqgh3795605n5HgFDSVdvKSWzCeG/rebanl8GF5o4hjU8YxbPnhpb
         QDcuaXmKwXkN1kSTxYTMjT4Am0ZoOnCHJ/l0eJsjpSy6JmYktoh1IEPzGWv7UAQn5Oqs
         oWPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m49sd1Vz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id t69si463534ill.3.2021.01.12.12.32.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 12:32:29 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id r9so6868749ioo.7;
        Tue, 12 Jan 2021 12:32:29 -0800 (PST)
X-Received: by 2002:a02:b60a:: with SMTP id h10mr1116894jam.99.1610483549482;
        Tue, 12 Jan 2021 12:32:29 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id v3sm3094783ilj.28.2021.01.12.12.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 12:32:28 -0800 (PST)
Date: Tue, 12 Jan 2021 13:32:26 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: syzbot <syzbot+76880518931d755473cf@syzkaller.appspotmail.com>
Cc: linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com,
	clang-built-linux@googlegroups.com,
	Dmitry Vyukov <dvyukov@google.com>, Marco Elver <elver@google.com>
Subject: Re: upstream build error (12)
Message-ID: <20210112203226.GA1055929@ubuntu-m3-large-x86>
References: <0000000000004a33a005b8b8eaab@google.com>
 <20210112194058.GA200254@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112194058.GA200254@ubuntu-m3-large-x86>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=m49sd1Vz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jan 12, 2021 at 12:40:58PM -0700, Nathan Chancellor wrote:
> On Tue, Jan 12, 2021 at 11:20:27AM -0800, syzbot wrote:
> > Hello,
> > 
> > syzbot found the following issue on:
> > 
> > HEAD commit:    e609571b Merge tag 'nfs-for-5.11-2' of git://git.linux-nfs..
> > git tree:       upstream
> > console output: https://syzkaller.appspot.com/x/log.txt?x=15965a00d00000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=6157970d0a91b812
> > dashboard link: https://syzkaller.appspot.com/bug?extid=76880518931d755473cf
> > compiler:       clang version 11.0.0 (https://github.com/llvm/llvm-project.git ca2dcbd030eadbf0aa9b660efe864ff08af6e18b)
> > 
> > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > Reported-by: syzbot+76880518931d755473cf@syzkaller.appspotmail.com
> > 
> > clang-11: error: unable to execute command: Aborted (core dumped)
> > clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
> > 
> > ---
> > This report is generated by a bot. It may contain errors.
> > See https://goo.gl/tpsmEJ for more information about syzbot.
> > syzbot engineers can be reached at syzkaller@googlegroups.com.
> > 
> > syzbot will keep track of this issue. See:
> > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> 
> Would it be possible for clang-built-linux@googlegroups.com to be CC'd
> when there is a build error and the compiler is clang? Especially if
> clang is hitting an assertion.

I cannot reproduce this with clang 11.0.1. I did a reverse bisect on
LLVM and found commit 4b0aa5724fea ("Change the INLINEASM_BR MachineInstr
to be a non-terminating instruction.") as the fix (which makes sense,
that commit has direct kernel implications). It is probably worth
upgrading syzkaller's clang to 11.0.1, where I have not seen any
assertions across all of the configurations that I test.

Ccing Dmitry and Marco directly.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112203226.GA1055929%40ubuntu-m3-large-x86.
