Return-Path: <clang-built-linux+bncBCS7XUWOUULBBENNY3ZAKGQEKXVVJ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC031691D6
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 22:01:07 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id o2sf3364094pgj.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 13:01:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582405266; cv=pass;
        d=google.com; s=arc-20160816;
        b=0KFxn+50wSqp6MS79lsGNjgE3u5c7Eey/fds6cKOI3mAefiVcyFUw5EDKfQPgn5xlC
         zuuUv15q8MkhRZoGI/7WYPDbiXIag+0rP0WNFpQ05Z3nZRLnFKNUc33UnZ3IxGuFw1uV
         xXzGiXSjxg6zuhw0QjIvOWFHQ9VBeYOT3jtaKwibI4/Z1Cb0b4cae9ehNBeivCs3BWYx
         +GvEUHde7Ww9TJSGyToSOy9Lzm+AGCBipiIPaSM1YNxTciyDLaZbA7KkEDOSJ40Z1tMr
         BzRNSvzSYuhakqqZ2cJ8TmJTuLTpBrFXnFf4UVibGHizOnB0YxYYrqIQPkmQoQpraS3+
         DSfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=5QMlCTWD/iUVmAHlfuTnPUYQXKKKdgB+DXSYOZyBTso=;
        b=NLWbkT5byh3Q1soSyOEYcG9+pjvwKdV/IibawgurxPitLWANVR+Qpk1EA7hgWA63Ea
         9e20u6C3l7up/A2gsokk0IW/ia589zCpob5ZOHBp18/i9Ug1Qrtd+GudkpBAXKXl8erd
         vtkRE/OksYoGXldczn+rLz9KeMuONU0afsEcwMKTebUGBUzHyCKKbwO/oJCgwokeQalD
         DMw0HbKWZh76tWa9VZ46Sui9mWJWRBuQBm4XDfVn8/yDv3IwwKyTJg6VEEmFv27jZJfF
         PiD/0wbHI6M4YOiTfmlZ++5VKIlsNw9VF9VPrtP8uJsfjCRorbJQyBjEyJgo/BMW3tHB
         MuSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q1hFllBq;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5QMlCTWD/iUVmAHlfuTnPUYQXKKKdgB+DXSYOZyBTso=;
        b=pSlMFSAkQ4ZDp9vqv7TG3qtXFAnBZI1T7i7FWXBA9mZH/CmI6qeAGtxkcgSyhprHk5
         1jS2kd30FG6Z32Ha2zMV857C0d7oPDSJPVxajKMpUsOIW5Xqyb6gvC7VboX/SCrYXEuQ
         yiW0JWJkYdnj3UGeeJM3ROSBC+OQ3qlSDGZrSXUQVkmJFIvOSGzXIsabj2qw7Ju4WNbL
         SYLIKfo4pivrkmQHKUTcBo+wudA6XQTO35g5mxDUpfITn1Y5Kmq03KrYE4Tf/XISxkhf
         Yx9XCpAHHNuB8EfVPksw2yDQCFcw1/17zWXOjaiKqUtdK4PSUWkP+95PASHBUpsmSwhz
         wA1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5QMlCTWD/iUVmAHlfuTnPUYQXKKKdgB+DXSYOZyBTso=;
        b=AcPPpRZ2J3upxq9QG50kWUCT8A/JBjZRRJmjSpvAbmjUwAJq4P7U6MVqemQthYNEMg
         f/PSniwWZem1OV91aA8KaXo4NMTzacbZKM5FsC86Lo07+XirlqmX6KB7V/is4UHHjjxW
         1xewqoW9ohacEfnzG3YZWaOec7l7FbWMv4ElGzvHf9CP/wzkUS1u55h0wwz+SpJE9JcB
         pakThZK5SxQGF9irK13HsgQxqhoqTZWDjm4DOUwwNNuyn6/iYvX019rFohgpZg4p3O1K
         /u1xHwJLqErir6y7MdMKhhqTyL2dYvSFgsTJJBTCiVLJmSjVJHnzYJCt4qqn6PtNH1Xk
         fMbw==
X-Gm-Message-State: APjAAAWNhIsOfD8YB0a73pxolF8EdNmgsZ0L0gx+HIhFQXAo+nH92P+r
	fK1UsVsR5KCZiq1A8OUJNRw=
X-Google-Smtp-Source: APXvYqzMGXLupvuQLsXmETx2XIYXb+1jeE2s4FC3w9GsESX9K17+8Mvb8pinfpe0/UJtKh/qXDYz7Q==
X-Received: by 2002:aa7:86c4:: with SMTP id h4mr45188684pfo.209.1582405265820;
        Sat, 22 Feb 2020 13:01:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8547:: with SMTP id y7ls1867699pfn.10.gmail; Sat, 22 Feb
 2020 13:01:05 -0800 (PST)
X-Received: by 2002:a63:921a:: with SMTP id o26mr45888549pgd.246.1582405265421;
        Sat, 22 Feb 2020 13:01:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582405265; cv=none;
        d=google.com; s=arc-20160816;
        b=E0/wyNTA3t/q6K2on4FBMnpxPmg5112w+PZg+pq0N9Nfle7kjRiWxfLQ7t5iWMYIto
         YAQi/UQvxVH/ZGdmU88esDWIuKdvoo/j5OVxHCruZJ7J2XnCVohL5kc6eER6FiYumyEp
         l2LTXDi4osDg1pgoigJz3a2ApQGeOADcjR0DtZXCl/SeBhCNi7P7tNwgFZ/LzawpKgO1
         NPHoHRoifhPmOELQyTLijnQiS1ltLSDWzIW2NiXPHaz4TM4xlTlcG7M/U33EwcaDz6/D
         1Hd227BFZqFTi0PWuyrC4wYdqNyBwBwXJxLUgIUv7DCW8UIug9iTJptyHB46CFIU+WBs
         sBrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=laEHxH1L9Tdj6O2OTgMojiMOqUUb6PedrFi1g5j2gKw=;
        b=0hm3WXtiOmnzCdPXNRk5Xy1ZwdwgJ9M/6SygjUNG3CqmkEqixFYpxcor2Omyrm/Wz4
         g0ra2dNSOvs0+9SejIHGplbCsuhzWOKchZzk+hH1t2+PeuFdXV0VhVHu2U4MlhlaP1Ol
         YzDl+ExF5rzJeRrxfCa/w1z02tgH8bnu+BSmIuxjws0tS9scag/A5JYeF50+5AME8683
         ww9309eWG0JJ7EsxiWNL1xdK+A2tEGdj0jwe7plNKj6MSYouJU7w8SIGlaTvkVgosBBO
         HtxWGsxo5Rb3zZUk15iWQ/rL6enPZ88GYpsv/pEYSh0VQFANEV5tIGrC8VT3XZd/zX7Q
         mz1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q1hFllBq;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a5si159162pjv.2.2020.02.22.13.01.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 13:01:05 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id dw13so2308435pjb.4
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 13:01:05 -0800 (PST)
X-Received: by 2002:a17:902:5a0c:: with SMTP id q12mr43016059pli.301.1582405264875;
        Sat, 22 Feb 2020 13:01:04 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id 72sm7400306pfw.7.2020.02.22.13.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 13:01:04 -0800 (PST)
Date: Sat, 22 Feb 2020 13:01:01 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH] x86/boot/compressed: Fix compressed kernel linking with
 lld
Message-ID: <20200222210101.diqw4zt6lz42ekgx@google.com>
References: <20200222164419.GB3326744@rani.riverdale.lan>
 <20200222171859.3594058-1-nivedita@alum.mit.edu>
 <20200222181413.GA22627@ubuntu-m2-xlarge-x86>
 <20200222185806.ywnqhfqmy67akfsa@google.com>
 <20200222201715.GA3674682@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200222201715.GA3674682@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q1hFllBq;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-02-22, Arvind Sankar wrote:
>On Sat, Feb 22, 2020 at 10:58:06AM -0800, Fangrui Song wrote:
>> On 2020-02-22, Nathan Chancellor wrote:
>> >On Sat, Feb 22, 2020 at 12:18:59PM -0500, Arvind Sankar wrote:
>> >> Commit TBD ("x86/boot/compressed: Remove unnecessary sections from
>> >> bzImage") discarded unnecessary sections with *(*). While this works
>> >> fine with the bfd linker, lld tries to also discard essential sections
>> >> like .shstrtab, .symtab and .strtab, which results in the link failing
>> >> since .shstrtab is required by the ELF specification. .symtab and
>> >> .strtab are also necessary to generate the zoffset.h file for the
>> >> bzImage header.
>> >>
>> >> Since the only sizeable section that can be discarded is .eh_frame,
>> >> restrict the discard to only .eh_frame to be safe.
>> >>
>> >> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>> >> ---
>> >> Sending as a fix on top of tip/x86/boot.
>> >>
>> >>  arch/x86/boot/compressed/vmlinux.lds.S | 4 ++--
>> >>  1 file changed, 2 insertions(+), 2 deletions(-)
>> >>
>> >> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
>> >> index 12a20603d92e..469dcf800a2c 100644
>> >> --- a/arch/x86/boot/compressed/vmlinux.lds.S
>> >> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
>> >> @@ -74,8 +74,8 @@ SECTIONS
>> >>  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
>> >>  	_end = .;
>> >>
>> >> -	/* Discard all remaining sections */
>> >> +	/* Discard .eh_frame to save some space */
>> >>  	/DISCARD/ : {
>> >> -		*(*)
>> >> +		*(.eh_frame)
>> >>  	}
>> >>  }
>> >> --
>> >> 2.24.1
>> >>
>> >
>> >FWIW:
>> >
>> >Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>>
>> I am puzzled. Doesn't -fno-asynchronous-unwind-tables suppress
>> .eh_frame in the object files? Why are there still .eh_frame?
>>
>> Though, there is prior art: arch/s390/boot/compressed/vmlinux.lds.S also discards .eh_frame
>
>The compressed kernel doesn't use the regular flags and it seems it
>doesn't have that option. Maybe we should add it in to avoid generating
>those in the first place.
>
>The .eh_frame discard in arch/x86/kernel/vmlinux.lds.S does seem
>superfluous though.

Yes, please do that. I recommend suppressting unneeded sections at
compile time, instead of discarding them at link time.

https://github.com/torvalds/linux/commit/83a092cf95f28696ddc36c8add0cf03ac034897f
added -Wl,--orphan-handling=warn to arch/powerpc/Makefile .
x86 can follow if that is appropriate.

I don't recommend -Wl,--orphan-handling=error, which can unnecessarily
break the builds.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222210101.diqw4zt6lz42ekgx%40google.com.
