Return-Path: <clang-built-linux+bncBCMIZB7QWENRBZXNZT5QKGQE3U2M3XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C52027CF2A
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 15:30:16 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id z75sf2055172ooa.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 06:30:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601386215; cv=pass;
        d=google.com; s=arc-20160816;
        b=A8i1qI+bPGIYK2Jl8Nxm3hZ972RY+7KdxapKnb0MEmaH2tNXGelXz0/I+CzvBvaTjx
         OdteO+WQdJewpD5uQ9lEu4Ley2bwq2UMQ5+nMuQHALKemhfsRC4afFu4I14Y4zQ0iJP2
         IsO9X8l9IOquacmZPK2bKfi4YlGK1VnRgnULS8wUojdgG9aeAweiM4uaxtSn18DbHF2J
         MDLXTlcZBQgAV/KNYZMaTg5mwNkqreok5wUxM0I9XkoBy4VwR5TopK7bD+SKgDxNDrwk
         AmejSnhA5FnIzVo+862sU52GVcttjeZSAh9UssC3iAMFgiKRUKVNmCS0dc5Texeql3tI
         P0bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mNMqTPFi8Pu7LkhqRJd0D3pDXbWgqf8+wbALkXGB3/4=;
        b=OCIzBHa847RLjI64e52OYR1xoXkGLp77I2o4RK3Vwd2udHiSSs5u0oNAfckocPGBVI
         93XdLLi/oCOCnNBHW3eWgx8OuqjAhGx+f6hBjSV+KUNr7pXefiIDymE+UBBE0RdD2PH1
         5+dQpEpRNMmdv/PfhmicWS357YcrbhhMD/fVsV4uxa/7Kzf0INBy8UgseHh9utav4izb
         xdtmxNJxghuMZ6l63gAy814ZJ4mf/jlAmiYU99jEsyhSX0qShItCSd2mM1ExxaN8Un0+
         a098GK6lX/m1Pw+hVggVKw6iiE604o3zxZDUVpPWQmuJ/oY0rXc+MhtkEb8s8d6Dcd4g
         cbZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NvwRZopy;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mNMqTPFi8Pu7LkhqRJd0D3pDXbWgqf8+wbALkXGB3/4=;
        b=gu0zWIN6SIdfdnYfH4rcSrNjmOpW8HLfWZXi1x8dUoskj0SofzSS98KBOw4Kxkn5Zw
         8cPi3GAqRUsFfD+tm+wOLkqizhCpVgQitPYqS3iW5iiFzEh3oKD6aMDNAQYXtV4dJNtD
         N1UJp4I50iwNHQvKk1zOrd27Ps32kAtaFgEpYJxOiGze9TezQPAUPNYtAY2MnYlUGHr+
         niw0owWOlSUq0PHvq/gG/51V8bkz9wkAtfnxsWyvV4fgG+ALAE0gKSVjGsIxiCPBhe3X
         JYQcc2ZB7A0QBnEcLcME/53qT+QMn5/x8dohu9gIPk/onPq1CvpsVNayWDEicypfyQoZ
         O0rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mNMqTPFi8Pu7LkhqRJd0D3pDXbWgqf8+wbALkXGB3/4=;
        b=j/5AqAnfPerZ+JKU2EXzuU4MoU3MQqyGkVNelko5VfJ6AF4TdgUQkUY/F8aWpigOxj
         9+BLO2aspoGJa3qKXMryxXoEKoI6gpRZXQQewrcSWcVePXFoo3eljpW2KYgZF7lFNB2j
         YqDxdHvAuo1lUthEuuSOM1ZX91QHECvE5JG+1MLr/PDIDuvgz2XM3rfcxLq3VWbD9PXf
         c3060nVfDyWStjHp5JxQIwNZpVg4Ia/qEQz3ZqDayHeCOHwa6UpR0dUt4QAhEzwKanVF
         SjOTo1NPNDwbl0cmkH8RNuwyRPPz/9+AYmFWgndYCT464BXYtJgkgUUZETQgV4lfhpab
         TLmA==
X-Gm-Message-State: AOAM530tm0LQVhfKlOLrf6TZMQ113Gii3An6GhmmMHJvGt3RLHErEsSn
	NjpgLf7HmieCpnkATUuiEDY=
X-Google-Smtp-Source: ABdhPJwVQjm41IYLMpW+atuBame+9W7WGAzmEj+QydyKCZOhluVT4p4DxwFAWSz0XJimIEdsJbBkeQ==
X-Received: by 2002:a9d:709a:: with SMTP id l26mr2626095otj.115.1601386214992;
        Tue, 29 Sep 2020 06:30:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:805:: with SMTP id 5ls1093801oty.9.gmail; Tue, 29 Sep
 2020 06:30:14 -0700 (PDT)
X-Received: by 2002:a9d:24aa:: with SMTP id z39mr2785397ota.258.1601386211179;
        Tue, 29 Sep 2020 06:30:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601386210; cv=none;
        d=google.com; s=arc-20160816;
        b=IvenOkhaNrpgdVXXczpX0bLf9NzhN+9NJsp+x5oKtRwMDDBSE9NZ+AaBPaCbKKecwv
         /24VlGTZfesawPT/NA43ai2CRqIyUvnIzHrKckNxGkyZaKO9nEdXdGDjpoiKE5w7VHAd
         F8iFnCtRCKG7nanl5QVh9hGMIwlg9ZMDJav83yjyMBQXHg5gR9wXCLMzbcvmZoO+v5OA
         2thPgf3/yfmSPmlgaeQsAXbJv/abNQ0Rl0Hn7iUHROZWAhFPQXIHSByr9s+PCpqE3s1I
         bCLDCJNA7Vfv05yVp6qtHHe2Fm/0rf+D7xg7J3nui+pqPiCCRo3aKyE6fT+PftTqvaeP
         mTvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oQxzCBvncWwKEr1jaMROUiPcwtGNmTTNLCla3c+790M=;
        b=V6P6x0mUP/qOvBaE3Uu036c16FMNK2slXtFJJv7J3UqZCTOWWtALrkBeJIDRHFlUni
         fTd4TFVFk28jACx2uMv/5MTlgbdrypdGviyhRAp9zW7z1t6o+XVHujbAr6thzCmDoKJ6
         WfieQQV4hPp4Gz5jimBkIfufcQYMk20TSygkAuygC16sMk0kd47QD85VjJqbE1rknCCd
         6DpNfg3jwiygUbzMskt+sJ67NCuKObcQLKxrp0QRUMf+ipucj7TDu3h46xZlqIjFbgv+
         XUgt9uhEMmvh9xQIQE83fEiRIn4nR7WMz2Es4HTBcdfM3hCd2bLfunfLM2o1XA9wQjXV
         IkNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NvwRZopy;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id k144si344787oih.5.2020.09.29.06.30.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 06:30:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id z2so3472969qtv.12
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 06:30:10 -0700 (PDT)
X-Received: by 2002:aed:26a7:: with SMTP id q36mr3232229qtd.57.1601386209826;
 Tue, 29 Sep 2020 06:30:09 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic> <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic> <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
 <20200928202353.GI1685@zn.tnic> <20200929083336.GA21110@zn.tnic>
In-Reply-To: <20200929083336.GA21110@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Sep 2020 15:29:58 +0200
Message-ID: <CACT4Y+bfKwoZe3SC-BKJkOET1GxGp9tCpLzkae8q1sjWYnmgmw@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NvwRZopy;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844
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

On Tue, Sep 29, 2020 at 10:33 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Mon, Sep 28, 2020 at 10:23:53PM +0200, Borislav Petkov wrote:
> > 2020/09/28 22:21:01 VMs 3, executed 179, corpus cover 11792, corpus signal 10881, max signal 19337, crashes 0, repro 0
>
> Ok, so far triggered two things:
>
> WARNING in f2fs_is_valid_blkaddr        1       2020/09/29 10:27        reproducing
> WARNING in reiserfs_put_super           1       2020/09/28 22:42
>
> you've probably seen them already.
>
> Anyway, next question. Let's say I trigger the corruption: is there a
> way to stop the guest VM which has triggered it so that I'm able to
> examine it with gdb?
>
> What about kdump? Can I dump the guest memory either with kdump or
> through the qemu monitor (I believe there's a command to dump memory) so
> that it can be poked at?
>
> Because as it is, we don't have a reproducer and as I see it, the fuzzing simply
> gets restarted:
>
> 2020/09/29 10:27:03 vm-3: crash: WARNING in f2fs_is_valid_blkaddr
> ...
> 2020/09/29 10:27:05 loop: phase=1 shutdown=false instances=1/4 [3] repro: pending=0 reproducing=1 queued=1
> 2020/09/29 10:27:05 loop: starting instance 3
>
> so it would be good to be able to say, when a vm encounters a crash, it
> should be stopped immediately so that the guest can be examined through
> qemu's gdb interface, i.e.,
>
> -gdb tcp::<portnum>
>
> or so?

Currently there is no such feature. I think some people did it because
something similar was mentioned on the mailing IIRC, but I don't know
how they did it, probably with some local code changes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbfKwoZe3SC-BKJkOET1GxGp9tCpLzkae8q1sjWYnmgmw%40mail.gmail.com.
