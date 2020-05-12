Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPN45H2QKGQE3ADTR5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2A21CEF19
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 10:28:47 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id m5sf5172986ioq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 01:28:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589272126; cv=pass;
        d=google.com; s=arc-20160816;
        b=vnEdUg9fvCkfNy4X2fDtawKH82Q7UX2q9VfersC4rGukuc3RxYKkPIBogGapnjmpuq
         zJvUuaLv5OTs7dL1hcn4l8lxNXKNmfrGxujOKwyZCdcLJeTvhUmha7pYcKJzwkHdKdG9
         p84mMbN8aQhRSV3Fd9PyU503fs6gDRjwZ6OfDvQh4ROP5snF0UKoVGQ9rKulCP0yhrHk
         +c7Uv3axL7RrE/s/6Pbh/ooXAjyKiFbYeRyi2NVuGOHyH7oui7a/1BxxxtQHecb+Lwss
         q1rFV0HfcLI7bcfrScT9TJ8pMhd3sp0ZNWi+3AQIPWZ15qre0VIYRbfLZk6lfApc79A8
         It1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=nltcHnR7Wv7r7pHeMcNPddqTtdkxr4d4VPpcsfN3cZU=;
        b=0OkunB5KQVI3LAivpZlUiu1/FZ0kIhopPjd/lk06O9N8JMhpsSGtqzL7PfuR5YDAi2
         3x6r+rF4uDIOk6MkiwE+DPVD9onAVJuYMuzCEOFLxftl3809zfM6DqKrX+PMuG5p+lBj
         r9fmFYejwo41o0H7WWNF9Zi+O/Qc9bjJBLC1wfd7tbwj4op+yCamVdLrwbIAc1+i3qIg
         LJBtrrzfer+7ksC/euGslWfYr89S7O9UamB+EndCrOWg/DjundMIR4x4UgGntCWOEADY
         +pujIAghp1jy4GU6ZGpeNJQ5CakavfJs6oSU3eZXlLCxp1PS3H8DMFH9cbohs0g7y6uz
         K4Wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NSSEVtZz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nltcHnR7Wv7r7pHeMcNPddqTtdkxr4d4VPpcsfN3cZU=;
        b=HWdBfTQBTHZdCimQI117204rwbmw5EdWF8oH2csMoZdjEkFB8OIBghMPVw9u55ZMY6
         kjUekMEKpC07yfkqU/zlwt1Dd+zyjnW7ioDzwu0P28C2PsbglnYDde/A3VoGnIrZ38Sp
         4CGg6hmoXmNPN7vjadlN69gjq0mw68acc7hRbb0Lef+uQRD+kNy1qkqx5RD1EXDmx9Xq
         xCmVLU4Xgm5Xjm5hQpq3RIO2uSbtkLi4KcOK7M378jvqNiyDofkfekZ2YkzKWEMF5gex
         mdjDvE8fpltQEhlo8QNchyASu9JNsLq2tb+jjVjoEoplp7pedzlWscBomXJgUJ10s/5w
         SRfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nltcHnR7Wv7r7pHeMcNPddqTtdkxr4d4VPpcsfN3cZU=;
        b=S0MTI61HoP8qMeo1sGuMnoztTrx8zjS5I8XC+egNytsCrqgUiPkn8lHbUnpNMLQ2Pq
         oMwe2g5XTOvmyQLHqa+LtSmaQXaRMofJvIiFe7a1wZ+RsZFVP2MuLGfM7GkmcU2RlxUy
         fiRFKG7ibFRl5qKz30gQUv5HUvMI3rCuTNLWhUbw4GM4ydAq6VD47KkIz0k8B6B3f0j3
         5q2Wl8rO9Or13vHe9b1qUbrthR5S6pyGkvYLhGN2FKvMzgsGUXSVzwoINk8KMGFfKRpK
         SAne/Ugfp4IzPWAG1chxnDxQyPO6zEol3XF/5cFAIJSPXeVFUuH3wRGYMUkc3ptF8QHR
         MHdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nltcHnR7Wv7r7pHeMcNPddqTtdkxr4d4VPpcsfN3cZU=;
        b=LdNzOcFxRj+kFkOAiNhdM1u7NvknQfBCYa+mfK8SFR8D32YoL4Vt/KgtGr9MLNfJUJ
         e97os1KGG99py0VlEZ+zsidp+wT7D38F8CHvBCY7I33ATEdfdUNDnpaql/MJE7NCA10Z
         3Da8Tewepfn211XcmOrr184R9b6N+nt2ssgXdxrwSDfh54pfVrjPKJjlo3KYiEC6PEmh
         TJqsOzobHcoT0HmMb4J86TktOsqNVOItmUHST5xvpnUcOyF1iwSWOBYarEkeaoPx6UmH
         zIaBkmMgaumNDCeCrXRDLTRLP+y4G21GPCRzmbr3uZqiKaEF7YvFFAxt3emm6y8Hl+FF
         Bq/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZx1twn6lIYd+pfRBUdi2SSy7hGyk4zvdpltTQAH/mdF4ec40B4
	uGBc5UV+0FyOxVmVGZhbzLc=
X-Google-Smtp-Source: APiQypLVcQpbhzXR7QueVEyZ+1b8Z4B5EF5ELj+LtqHoz67zODSdztk1Y6SmWhlrmnkKWObuMjjHUQ==
X-Received: by 2002:a92:5b05:: with SMTP id p5mr19011543ilb.94.1589272125935;
        Tue, 12 May 2020 01:28:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce4c:: with SMTP id a12ls4020682ilr.8.gmail; Tue, 12 May
 2020 01:28:45 -0700 (PDT)
X-Received: by 2002:a92:bb01:: with SMTP id w1mr21281355ili.233.1589272125646;
        Tue, 12 May 2020 01:28:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589272125; cv=none;
        d=google.com; s=arc-20160816;
        b=MwHf+cjQnZd9qwDrM+5TdTRbdkg4bP9alYQUKNCqHkXi6us39rLKVx4RZ17XacrLf/
         DXoqm0Wb3aX7TZxsQNbssuwwq1f2fMl4h6LUk3DgxALS4iEoyJAJOpJ1bAMEqU3DQfaL
         NiVqKg9T9RGUyiKgFlTtaQg0iXYaBqAU2p2J54lbjHZylObUjg0UnlhQdPSkHYnMrjk5
         uiEIG0w4FSTwG0q2VzCTuH52f0Y3k4KeTBFNeDDrYThTYenT34z4JA0N4Hqb5Mwi1pgq
         yFZbk8KV7jhV8K54GlamHBvOb+Y2E707Js2egFllSQeA5I36I1N5gZq2TbA9YARj2MgL
         7Uqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4kVbCD/n1BkwyUP75XXZyibv77Dl7m/9w8NUlO/ODo8=;
        b=sf2hbrpnsZpHEDUjvgRZRbrhZK77mEdHRn1eBpJ/3ryR8liDfLPUEBdl0H2PqVThY3
         LXiuYxs6R9ENpeumDZgtE77xxt39jzANRYZi8AV+YAuIppY+1wFIIV2AARxKzPGEA9Cr
         HvyB2Bm1ARjdrP246fES6gMiTeIK6rjwBc6fRbZxs+KFCUsqeudD6oZYbB1esvyODTPu
         wjnt28xRvfFbMY7WYvJXT5BYY9zrdTWJ2ogwOUrucD5jn47bG5v8hTaqAkCY6XCOwaB1
         9CDJQkMBCkU6H/NkyXfLu18tNEXzdjldSm1eI3aw9o2Gg8MLs8ew+vJAuxN3c6ZKoCQX
         0SsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NSSEVtZz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id k8si379209ilq.3.2020.05.12.01.28.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 01:28:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-oo1-xc43.google.com with SMTP id t3so2529954oou.8
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 01:28:45 -0700 (PDT)
X-Received: by 2002:a4a:d8d7:: with SMTP id c23mr17048455oov.8.1589272125154;
        Tue, 12 May 2020 01:28:45 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l2sm5243695oib.58.2020.05.12.01.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2020 01:28:44 -0700 (PDT)
Date: Tue, 12 May 2020 01:28:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v5 0/5] Allow ld.lld to link the MIPS VDSO
Message-ID: <20200512082843.GA3815743@ubuntu-s3-xlarge-x86>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
 <20200512080509.GA9433@alpha.franken.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200512080509.GA9433@alpha.franken.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NSSEVtZz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, May 12, 2020 at 10:05:09AM +0200, Thomas Bogendoerfer wrote:
> On Tue, Apr 28, 2020 at 03:14:14PM -0700, Nathan Chancellor wrote:
> > [..]
> > Please let me know if there are any issues!
> 
> I found no issues in my tests. Is this the final state ? If yes, I'm
> going to apply it to mips-next.
> 
> Thomas.
> 
> -- 
> Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
> good idea.                                                [ RFC1925, 2.3 ]

Maciej seemed to have some issue with the way I worded the commit
message of patch 4 but I have not heard anything back about my
suggestion and Fangrui commented that --eh-frame-hdr might not be
necessary but if everything works fine for you with this version, I
am not inclined to touch it.

If you feel this is good to go, I am happy to let it go in. Thanks for
accepting it!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200512082843.GA3815743%40ubuntu-s3-xlarge-x86.
