Return-Path: <clang-built-linux+bncBCOM5SVQUQLRBSPX5CCAMGQEPDUD5XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDFA37A167
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 10:09:46 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id l8-20020a25b3080000b02904f8bd69022dsf9259560ybj.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 01:09:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620720585; cv=pass;
        d=google.com; s=arc-20160816;
        b=D5QMiMPyiVwJEy6cRfugui18f5VEou/3h6ddr3xTEiEQCQe3WoF/C+BSg1JkdvEhmI
         smjf6Szdk34jkx3YAeKkx5ZP7JydmNJ3SCJEmwiqH82WoJEVNUuy8BQz4BT5Vc5Bgzm5
         7LtBM9mesF8BP4kxFmxC54V+fNdOi1bVVRglTtPzNRhQonwP41bHs7rbiaipjtb3IfmC
         mjeGqDzMfmJ643K9R/Nh8pxXHFZyB5/cNX4dNzDy5ATroGef5aosJ820ct/DPFoyZgMz
         ostmHHOcUL+lSoVKu3SBHLWu5fgdoAqu7vELXObIJHCS5mHQoj5YWSe3cDohl68ggrad
         2yoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=bLfhLN/r8UqEqCz5i/oh/S8AYr0PV+BeLMfnAqfESHg=;
        b=x9h9Lr20PPQ/CL+xKe7UsgdPrhW5ONCy2586Hz0Q2s80wREbvZ1TSBCP6yFzEERjUK
         PPThsmbqGgud4Hp48krRqf8vEAOSDZ/5Ve6qbkoBwDQXT2io+yVvz92gW/iLaVblJSWB
         9PBb8KvSRkWKjQWRLG9rWzov8sPWCXigwe50TgZ4r9s+yl5/9HqozDAPPSSUvjdDcT0x
         7gr+CtnKr9PnZhxwfXxGS6HM6grNT8AlWL5pUi+kh4cEOC2dqHQGqMWZhJnANGrsd1Uc
         0anQuWqkBL4s4K+RbRey09x95rEqr+58VyCh0Ji/OAF1g3aU6PXjm0ZY6FIx4l2bKz+i
         nURg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cIV2qx3B;
       spf=pass (google.com: domain of revest@chromium.org designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=revest@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLfhLN/r8UqEqCz5i/oh/S8AYr0PV+BeLMfnAqfESHg=;
        b=U/djmEf34j4KPnDJhDJVMVjYBmIvZxvergjVYVKkwcnDf5wei9fjKpWCeZv9sDzjVQ
         wDY/ECZSNm2Tu2tBAipiinaC06sqkTo73P+3cYOoG+NhGiSFivPX1pv5WFv2NhYyF4js
         PEuTdEdALaDy4ElWlMDSLIeJNUeMKa+YN7ak0fGejjzH1GLARw9194twZ1DUsJEP3odO
         cjNJKkpNP7IwndMXYImBqt268VEmkAExWw+rndAhtYiC6wTSY+i1kn1//kNhs0zSqVf2
         uxfl8S+cALSlvoQhc/uH2FLwnvT0YOW1aMG/YkLZcGdv+x+WgBlsBDjnkn/IVGiewQSs
         1B1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLfhLN/r8UqEqCz5i/oh/S8AYr0PV+BeLMfnAqfESHg=;
        b=KlTTez76CsW9lUREqAbX1UFXcfcTTHoeJ2lritLLM1Ej1eUlJdpLwRwzDcfbpz7SWO
         nmSqo+p2xBsONXWV71+IQ8a3uzIem93aWmXmnmiX8OboS8cMWEOKBFrdNbFrR2rUXmN0
         tsIpR1c2eARjABE5+leXr6Ocvd5dyNPbclZIUxwNYnmyO5nVVWVqqHZtVpxuxzo5250B
         /xTuxly05uqYkbyphnDTerLOrssrAOzyEXOhwnh3cKWtsUX4ME555gccQ8IPncXfaldq
         pxTagsF4upg365ecXFAPqxm4h40vikllO1KngEMuodbXWlmxUFktiPMy+/6cTafcWFus
         Zl8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lSdyjY4ydPpqzFuogvtYzUr+F1I1a2zv84hrzHkVJGFYH3Bin
	5ONDxK7VS9t+Xjdk8N0KUHg=
X-Google-Smtp-Source: ABdhPJxP+Yakn4hwlNyDsKgTU8kJpPt6LXUpcFAekQMW1XJ+wcFhiPQbsUBbrG3p9qod7At/ROObOA==
X-Received: by 2002:a5b:44e:: with SMTP id s14mr40692954ybp.11.1620720585214;
        Tue, 11 May 2021 01:09:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls8175181ybc.2.gmail; Tue, 11
 May 2021 01:09:44 -0700 (PDT)
X-Received: by 2002:a25:b9c3:: with SMTP id y3mr36517790ybj.480.1620720584743;
        Tue, 11 May 2021 01:09:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620720584; cv=none;
        d=google.com; s=arc-20160816;
        b=HBquBxDGy9QNQfSfLECLHISNZgz3lhWsZAu7sz6sarlogUmcAooz+ACn3Yz51Rkht1
         H4XXFRVqupHRfRXLT8VUaXSHTgPt/gJ6mY1RdHZT9Cg+x+0wuZyJjYCa3I1oYh3OJGmO
         PfP2p85G9rHIFY8W8q6CjDBhaT3vAagbltdIsSg2VG6Er6pxRjVltcEFWezngvOTWD4H
         hR+uROvoBC9OW6sL1kruDzK0smb7XBDYjdLl4UXRcuZVLaLQGC77DT5e2vXZhYEwvYiQ
         PyfsUQbgj8zZHM9vdmaiWESs3rr0weXzn0HvgaSooOjmqVM/o2n0MX3C1H2uRVq2wet+
         NaUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nwCpuy6Ma+B9CLVkSzvCpXN8V8ZZ/aRoBy/1arq/RSs=;
        b=NDDOOiozlAnsV1sRKY/LkF0EjSvmpr1j+ypD9Aeo27nMEkXTMYNQ9YLE5E6TZsfTKO
         46sdK5zPLI3unEcAJI2WQ4mzBHp2+RQ4PHL+uRBr+drk5x5bATGqOL5Z2/LUO67y5+jR
         Ctlc87taeJrr38SuibNosDOhhMRvCkRIlPU0v6rQT5sTbo0kLmn/NshWiy6nWIe470ws
         qNwjYNwf/z31fM2Pu0w5lUg1a4md3N5vOqnv+a6qpDU5JaViW4kb/d4pv31RBvgw+bxE
         bb70hxJjfkwT6B8yHfYu4ger6ydlSrOkmI/CKXHucN3pU7Y50Exdxikr6K8dUQF5x1EL
         hDHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cIV2qx3B;
       spf=pass (google.com: domain of revest@chromium.org designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=revest@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id r9si1796660ybb.1.2021.05.11.01.09.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 01:09:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of revest@chromium.org designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id o9so11297640ilh.6
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 01:09:44 -0700 (PDT)
X-Received: by 2002:a05:6e02:eac:: with SMTP id u12mr25685917ilj.177.1620720584292;
 Tue, 11 May 2021 01:09:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210510213709.2004366-1-revest@chromium.org> <202105110911.f084GH7J-lkp@intel.com>
In-Reply-To: <202105110911.f084GH7J-lkp@intel.com>
From: Florent Revest <revest@chromium.org>
Date: Tue, 11 May 2021 10:09:32 +0200
Message-ID: <CABRcYmK+iEMy-DOp2tyaAVGfQMwhyeZGGs-LyO_RYfFprbs34A@mail.gmail.com>
Subject: Re: [PATCH bpf] bpf: Fix nested bpf_bprintf_prepare with more per-cpu buffers
To: kernel test robot <lkp@intel.com>
Cc: bpf <bpf@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, KP Singh <kpsingh@kernel.org>, 
	Brendan Jackman <jackmanb@google.com>, open list <linux-kernel@vger.kernel.org>, 
	syzbot+63122d0bc347f18c1884@syzkaller.appspotmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: revest@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cIV2qx3B;       spf=pass
 (google.com: domain of revest@chromium.org designates 2607:f8b0:4864:20::131
 as permitted sender) smtp.mailfrom=revest@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, May 11, 2021 at 3:58 AM kernel test robot <lkp@intel.com> wrote:
>    kernel/bpf/helpers.c:718:23: error: use of undeclared identifier 'bpf_bprintf_buf'; did you mean 'bpf_bprintf_bufs'?

Ugh, reminder to self: don't zealously rename variables just before
sending a patch out.

I'm sending a v2, sorry for the noise.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABRcYmK%2BiEMy-DOp2tyaAVGfQMwhyeZGGs-LyO_RYfFprbs34A%40mail.gmail.com.
