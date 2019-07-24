Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBQVK4HUQKGQEIG6BMJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2FA72F48
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 14:55:31 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id 6sf28481691pfz.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 05:55:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563972930; cv=pass;
        d=google.com; s=arc-20160816;
        b=pfwQxKAnCezcVQnb3FDjnssqBKwBioayKKB37WjsCSK9FuKUOwK+vM0+GZWGTqqui/
         RF4nehETZPbUaj+IPgjaT+j40AaNit/P9Ss6PD7mddxgmluK5THWY+O5sJ/5TKfTs8Bk
         EO+lph2nk+j1fLVaBEcMHw0GP1IyVTshBVJHGk1oqsGz/6HZotXwm3tpHfzA5NvyRRdr
         jHSszg9ukVjkdkgxQXJpQLVs2E3x2689ccK7VBLf9bTh6pjQlzjON61YkGm/IXmfgo9t
         wwi986DgWSbF8LpuleQlk1LqcLa01vAZoCYByx9KsjS+2kcPZwIS5rac+M6lQVfDZoYy
         fNxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1LhKZdswCV/wjnvn07W40X+juUXmxxIBmesevc4fiT4=;
        b=B5ug0Gc7FpNErpVCe2/64D8o2aJM1QuCgY56Qle+ilXZnBQUc67F6B6O0ohaXlQgiZ
         9WSDyOMnhGoNay+h8DcqkfDLEN+eLRJKFfM2/zTcdNGSvClEd4elt98PTWoM523MGCor
         Be1M4Qy3JU1xJICI/E9ADpDUpMuXseksUxUGQMiSedI1gLE58kvj1XF6INUP5JwY6fuK
         s94UOZa64JklKRGt6B+/1moBu+L9FHRVLcwKll7DN+561r13NPHauHuRfYpMFzJdwozm
         D2r1DLETxb+j7dh7wLru8L37faRK9rEQMkk52egOJsj7C2HNO9YDMZ+JFp26wLJKSr+V
         Ldzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1LhKZdswCV/wjnvn07W40X+juUXmxxIBmesevc4fiT4=;
        b=VSyYizVdosro9KgmAEGQQOuu2RvPZOttrNddt/P55EDIMVmiv09u1NlaBpO7SeyqeO
         l95l6RYl6J8TfBDk8uVwA2dvXzcrEcxMS7jzOObA5folec7zJ7LpPAY/q131zfYF7wjO
         fRHPyYnMCqwDnytPK+TjjQyKhJDvyyvt5CUspsvQkNThJiQ+ES1W1dK9dM/JGoSMFeII
         VGmVuX6njcjKyF35ZvbpIMmduf4tk22xYdrAAk42MrCc6IxakX3g93KX0WWsv0rt0ngz
         sggT1m0miGoz23+gAM5PbfJbJdGVBQ3tMtifazOTH10TTLwBZzJL3u5PzyW7TmUw2U2Z
         nooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1LhKZdswCV/wjnvn07W40X+juUXmxxIBmesevc4fiT4=;
        b=M8E+U+XPUIv8vyQgycZ+y3g0nLK0evnIEyUuQ4/6xdMdV/I+LAwj5ArG3HJFJijmTt
         FoDXVeGYdpfVX8b6VHss0zPOVztEI8ktgGOb54ywUH44rg4RusRjOSVDy6Mw/3cDtH/c
         205WG8ZiVOp9djjUMNJQuD04JswWgS2aHe7hU6z2zOXwDlm+Hz2q6dDPC+mu5ELNKeNm
         sQyAccwXbcsh+2Vchl1f990I3Yw3O/dnioLJNKodAdR9SQ1pDefzWJhgIgkQ9I3afsre
         Xq4yIc8FMcEs+NzRt67OLj0k7gR2uE7ZlnSNSzZVI87b054V3RoWAbW6pF7UQobvOLK3
         p0PQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAULkVR8Bur5ZoR273or8gqusC9z9b0DeiwtweH7tzrNMwRyAESY
	FvGq1Oau3Qu55Sngk1YWQZc=
X-Google-Smtp-Source: APXvYqzlPmDPOHRbhOFvOKbYpX3aip7FprpCxM+QOx1ibdc5VugQmM7hiA/5xNLa/b8LTxi3iBJRyA==
X-Received: by 2002:a17:90a:ca0f:: with SMTP id x15mr41992186pjt.82.1563972930323;
        Wed, 24 Jul 2019 05:55:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab8f:: with SMTP id f15ls12315523plr.15.gmail; Wed,
 24 Jul 2019 05:55:30 -0700 (PDT)
X-Received: by 2002:a17:902:9f8e:: with SMTP id g14mr39840329plq.67.1563972930048;
        Wed, 24 Jul 2019 05:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563972930; cv=none;
        d=google.com; s=arc-20160816;
        b=KVTvGrIQvIjFc76NdKy/d2EgidaFj6Ny6QfS/XV4i3TytZ9DhYTnibJ06D8hc/lKvt
         +P5sMp+mfrol7mLVAiiDvgxwVg61QV5bvR1DrtX3ZOYhdPLjuNGpaI9XJHnkF9W3vMGc
         VLUu94JCAwq9eUAyIojOCm2+zPvCeGPJZxFfbRW0ywTZ3G9zFu2JC3O0ivjH9cyBrCFw
         q1b+ayqiVfkBgeTt1I8pEmpgAAginiK3E4RRvThzRfsXwyBzt+FR+t1kTRqrraHwJOS9
         R2wJ8VSITrk3yUt3bb4NxzWa6wcJ70WSuPWHiCPQfHQkkbOW4J+OCD9M8XIDgqWiGNre
         MznA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=MjfUuseVUxT8oVbC6aO0Yd7rvuRaR2KZXOnWDysbEOk=;
        b=L1cJH+iybaY04fzNxVvPMD57QD6pP5WUFu88ogQoTYjO2JejrAj8GNgX70BvjnRBDq
         O1rvfOSGlk2nP7A8ojlaTnjAuliJgm0jOXWxkCeXoAsvjmJwLx+URBfJG1VEjxlftUJb
         ZEDUc5GKfvVwYf4YGiFMQsD/BT/SoOPQkTdXB4nX8viGeSXGoHXbyrx9GKekiaf863Q2
         5CYWkH2f9FqRBJqUF+8zpTUgqaN88HesJMNLQjQfYbWJtTYCuT4CLE/M9EhJU2lu7g0r
         PrKTA5bU2IAlAAcDKRuyHogXtPwRo3Xoi107VVtm8bnImcGk1oLpshRdymqgzyHy89AK
         x1nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id b12si598010pfd.4.2019.07.24.05.55.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 05:55:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 56E84300C72E;
	Wed, 24 Jul 2019 12:55:28 +0000 (UTC)
Received: from treble (ovpn-122-90.rdu2.redhat.com [10.10.122.90])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 490975D9DE;
	Wed, 24 Jul 2019 12:55:27 +0000 (UTC)
Date: Wed, 24 Jul 2019 07:55:25 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: x86 - clang / objtool status
Message-ID: <20190724125525.kgybu3nnpvwlcz2c@treble>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble>
 <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Wed, 24 Jul 2019 12:55:28 +0000 (UTC)
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jpoimboe@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jpoimboe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Jul 24, 2019 at 09:47:32AM +0200, Peter Zijlstra wrote:
> On Tue, Jul 23, 2019 at 09:43:24PM -0500, Josh Poimboeuf wrote:
> > On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
> > 
> > >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x86: redundant UACCESS disable
> > 
> > Looking at this one, I think I agree with objtool.
> > 
> > PeterZ, Linus, I know y'all discussed this code a few months ago.
> > 
> > __copy_from_user() already does a CLAC in its error path.  So isn't the
> > user_access_end() redundant for the __copy_from_user() error path?
> 
> Hmm, is this a result of your c705cecc8431 ("objtool: Track original function across branches") ?
> 
> I'm thinking it might've 'overlooked' the CLAC in the error path before
> (because it didn't have a related function) and now it sees it and
> worries about it.
> 
> Then again, I'm not seeing this warning on my GCC builds; so what's
> happening?

According to the github issue[1] my patch doesn't fix the warning with
Clang.  So questions remain:

a) what is objtool actually warning about?

b) why doesn't objtool detect the case I found?


I can look at it later, post-meetings.


[1] https://github.com/ClangBuiltLinux/linux/issues/617

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724125525.kgybu3nnpvwlcz2c%40treble.
