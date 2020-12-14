Return-Path: <clang-built-linux+bncBCMIZB7QWENRBPXR3X7AKGQEWZ6AZWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ED52D9A17
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 15:37:52 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id y2sf1233119pfe.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 06:37:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607956671; cv=pass;
        d=google.com; s=arc-20160816;
        b=HOIOeXmSjq6pXX+9aYHy9fBs2XYDnanFlFD9r3Lmphsme1uK5aa86e6h2U1RqL3Tfj
         pWgYQ2NjIytuehzNHmr3qXkP1JNHaiKmEEMWaAHBWN7q40eqCS5YXq1HpmVDAqGHtPjg
         VqBDeCn8TE62Ew9i/RpWsfruhecJt/cQ4ww/r2nGHEMJ/jufIZpzPRc1Ek+Vk90yEzwT
         g6o4cGljew9OdnFlTkwj49Of33hl4gkVW72fmmyd2rtSHGDPPITtSlN9y3oGzBtXyzqD
         KNCX74CcUHJdk7JgeU75rCeieT39e33L+pSSrkT4E+lvS4oYXyWALuXO0Haxdvc03fec
         h1IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dmrxA6foWNwCwy+TPS0SUpzYlvOe0aHGJw6dPVfon58=;
        b=bfWvN6btZdLCu/xnfmWerUb7J1qYD0UnPWsqlKl3VoPyG4cbyi+sbeDrMvZFrGxJbB
         nOSEKUvd7j8kV4eOFbeSfJRqK84VcTs3HJ7Cyy+OttS+XSx+FAKc675dh4xx4lh6FAc2
         ui6IfPyjK19VNqzCM8PVRQfobZ7nBmzcEv/oa4yjhtuWfRyp4+9ks3dva5UwNhx/DOmG
         L/ZQx/IUgSoWT97gugIoeW3FWlNUN9bosM08xjHLwNn/sv08yjIwoaIxPCCFNhGXxk4a
         h/MjcvJOUbf6vt4OSah6igGysAnCHfqP0ymPnIQEXJXjDb8Z6cFLWlBNFgxfqt5nz6OA
         VioA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HEpN52ki;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dmrxA6foWNwCwy+TPS0SUpzYlvOe0aHGJw6dPVfon58=;
        b=pVvUJtdtIlD+N6ZMBQ7jkMusiu+674LQKTeah9fPGIeBpoGpj+lZg/foGUASBl0AJh
         ZLi0ybkkN5xDF7sAFizwcH7qzmRidt+x8Teoxws8Pmi4F+AtmYnG6swJY12lODb3UwP3
         Ztvx2kmxG91a/uagiFUt+sqeVBa7JwFloS+EgLWHSsQ2y1GTp6feWXXnadGAULn3Pvu7
         R9tgUr7VzYedPZCPDran7EB8ew5S38SqTMhR6gxn6snkx8beVMEyIcov4HXYORYZvfgW
         ZfWZGz84fQ5E7X37JzY97+oCKxgNQ/XdMdYtPiiwo1yfNc97Daxsa0HFihMoYowrA+9x
         GYeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dmrxA6foWNwCwy+TPS0SUpzYlvOe0aHGJw6dPVfon58=;
        b=qHWfK0jYbXs4+ZzuZO4CqdccFH9+SJXUbx0M2KCoJTI6UobL0indVhaKLtHQPxbnNj
         EKl1ZrdFJkkoPv3cLUR2QcxNurFWbhwVwvRrPwQU5uj2M6ZlXz0z50tF4gbyBIoTCePZ
         htLczB1YJPjQkU1nxLVKg2e3RirFGtxUzVSUO2iNTwcQPx5FnxTi52/7X8KWGOBJQiXC
         KwMBz3OjLYN70Hzt5ttDL6en9XiKKQ8T5KJcC6tZxoTeBpBObsdVlBf1mJWtmeNjOekM
         pFH7SQZHVlDXq/BATwDNaR9aq/MVor08vJEmzSgtkd1tD3HFxkmZwyjYxIFEVYArqY12
         LVaA==
X-Gm-Message-State: AOAM530FzZXnOoAaUc9GqUStNmhA8l/CtWkbCM5yDbSAlD/hijeBeb2L
	v3H7YAX/aKYviF6LvZ8RfOI=
X-Google-Smtp-Source: ABdhPJxZd+jGAjpUyM3TpR/J35W8AJ/+9no0R0UtIt/HJwNIBAfaxfPNbYZgU46e+ugRLWdc+nKIug==
X-Received: by 2002:aa7:959a:0:b029:1a1:ffc5:531d with SMTP id z26-20020aa7959a0000b02901a1ffc5531dmr14041525pfj.27.1607956670826;
        Mon, 14 Dec 2020 06:37:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6491:: with SMTP id y139ls6477433pfb.6.gmail; Mon, 14
 Dec 2020 06:37:50 -0800 (PST)
X-Received: by 2002:a63:494f:: with SMTP id y15mr24403368pgk.364.1607956670183;
        Mon, 14 Dec 2020 06:37:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607956670; cv=none;
        d=google.com; s=arc-20160816;
        b=zzZFHj2/wnJsZfDcedppe6qJKP8qIaHJtw0TQumPA3c9gGdgrgjQk/Z4ZCljcAMhqK
         5e4mGS7sqd4H9sKKaeXXsNsYSWm0Trm2XstAp4nO/cUonkstFpaB69gHW3IID24pBK92
         cEPaykaUegEg1rnpn1WgH0hCj0GRjQ1shNq9H3JEYJjoAC6MMOyCHN3yPZnsjoqM3zV6
         ozfqlZn97gaxINJk3aJd3tNz6tQkIbB3dL1t2jcQ7RgNECItrZzZQdu4qG7nz0v0+K4i
         ZYVM9rrptnek/yBjbTRKfVqm8PrqbNP+rJNWduqbhkcrnARSolzmIJGNwVGgIhbuW12L
         TrFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HunglVjcvBMAm8Vnq5RKFceAB0LUszPBed8/+5881NA=;
        b=R1IBJZk9siBF2kRro5ZtFc/P75b81aWhPYdHol/8m0sHn7dhxH43kqlbaxw6L7kNRh
         9ATBPZ38LeYZPQLNfxC+wg3xK1RpJh8UgFZKlSaisd0UYFi+bITxuLKg3TQvUsfwqEMp
         n6j5MlBfUHgY4z+cEBEWyIYheB1JgGzD3MAmZeiWTF9fZiSG6HaZbEJRGyfDrp33h5dQ
         6IXS9ob0nZ3mmTD2eTMSLUNeNIpTCPCrG4LfrdT0SLw0rnG6PaHRBXw0iLgn19WFSnoc
         s5G0TtwDd+IPc81slTYbICUrd3JgwBhaAIGWp0E8OYqmIotUb/9pAEFKFADRvosD1KIn
         C6KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HEpN52ki;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id ce15si403354pjb.3.2020.12.14.06.37.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 06:37:50 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id f14so11907441qto.12
        for <clang-built-linux@googlegroups.com>; Mon, 14 Dec 2020 06:37:50 -0800 (PST)
X-Received: by 2002:ac8:4e1c:: with SMTP id c28mr31562407qtw.67.1607956669043;
 Mon, 14 Dec 2020 06:37:49 -0800 (PST)
MIME-Version: 1.0
References: <20201210023638.GP52960@mit.edu> <00000000000024030c05b61412e6@google.com>
 <CACT4Y+bkaVq1RzONGuPJxu-pSyCSRrEs7xV0sa2n0oLNkicHQQ@mail.gmail.com> <20201210182821.GS52960@mit.edu>
In-Reply-To: <20201210182821.GS52960@mit.edu>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Dec 2020 15:37:37 +0100
Message-ID: <CACT4Y+bqDdidJpYimvzY5UkrXzw7JuefHndOM0+c6Y8e56vBjQ@mail.gmail.com>
Subject: Re: UBSAN: shift-out-of-bounds in ext4_fill_super
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Cc: syzbot <syzbot+345b75652b1d24227443@syzkaller.appspotmail.com>, 
	Andreas Dilger <adilger.kernel@dilger.ca>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-ext4@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HEpN52ki;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842
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

On Thu, Dec 10, 2020 at 7:28 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> On Thu, Dec 10, 2020 at 09:09:51AM +0100, Dmitry Vyukov wrote:
> > >  * [new tag]                   ext4-for-linus-5.8-rc1-2 -> ext4-for-linus-5.8-rc1-2
> > >  ! [rejected]                  ext4_for_linus           -> ext4_for_linus  (would clobber existing tag)
> >
> > Interesting. First time I see this. Should syzkaller use 'git fetch
> > --tags --force"?...
> > StackOverflow suggests it should help:
> > https://stackoverflow.com/questions/58031165/how-to-get-rid-of-would-clobber-existing-tag
>
> Yeah, sorry, ext4_for_linus is a signed tag which is only used to
> authenticate my pull request to Linus.  After Linus accepts the pull,
> the digital signature is going to be upstream, and so I end up
> deleting and the reusing that tag for the next merge window.
>
> I guess I could just start always using ext4_for_linus-<VERSION> and
> just delete the tags once they have been accepted, to keep my list of
> tags clean.
>
> It's going to make everyone else's tags who pull from ext4.git messy,
> though, with gobs of tags that probably won't be of use to them.  It
> does avoid the need to use git fetch --tags --force, and I guess
> people are used to the need to GC tags with the linux-repo.  So maybe
> that's the right thing to do going forward.

Hi Ted,

syzbot is now prepared and won't fail next time, nor on other similar
trees. Which is good.
So it's really up to you.

Thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbqDdidJpYimvzY5UkrXzw7JuefHndOM0%2Bc6Y8e56vBjQ%40mail.gmail.com.
