Return-Path: <clang-built-linux+bncBCO4HLFLUAOBBVPDYX2QKGQEQFZJD4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id D51851C57BB
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:01:57 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id v23sf350715wmj.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:01:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588687317; cv=pass;
        d=google.com; s=arc-20160816;
        b=mGm6iXaoJL8TdboNKT9PCktkSV3Z3O71mlR0/7UPXo89aT9qgoUNyZrNlWqv/Iq0fa
         QnOvH90O9Er5dYrOh62TPE74AKQrsyeBs6+6F8kXJMJ1Jib5UvGUmAfw+ra6NZlMV7Cq
         bfqQ3g+/bmP8DyuNESHNI33oKgu1fvtDI7BmeB+OcTaLrXoeKVIZdJgBcjJs+MNPvdGA
         WI3Yiqvgab3HLL3ppOueI5y+y1x3C3N+na87VOmkTNQqEYNY3x2jsXLDuucaHbKW3CrC
         NGyt5seImWr6eaGe9We3yf8akQ7aP0yAkQ+qxDZVpqQFMpvLEr+MNoOl6YcC/hrxs6Lb
         tdqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TtVHiKdT8JdAexNtpXpGgM31TLUVVe33qZUAIKzxZ30=;
        b=J9mElYk0qw6o2UcWW3T5BlGrauHR4Q3FkFGsLLcpnUPvtkqZroKTYY35byaE67sobs
         fk8/b5jr2fYEh9XWjSRinCuJWMLk3+PNwFBtazdCzjMONTWW+8QJ1nRVR5DFEjl9o68u
         Wn1JDUnQ01Qsm/tNgflEvUP8xM/XznEfkhryK//MHxDKUVfwaDWbWE1EGZlCiMlghixD
         DJpvSL5L3Yl048zRzHFY/oOaw5fQ/i8Qaz7hHsVIpKKkHO0Vf7jo5SpiZe0P4BBMekyw
         KY1XoLpDVWHj5agV7OYRGuMAu93a6RlSid7HynqNbWObgmdn2uXn4z+IlWvBxibyyB63
         RUOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TtVHiKdT8JdAexNtpXpGgM31TLUVVe33qZUAIKzxZ30=;
        b=hNkLvsGZdfi87T9w/s3Bj3qMyIC71fp/IFRR+VjyW5KDmpuSs5XS53S8yfADIUqTrm
         NFbply5VJB0A5XNDREup5wxcmCKaFoe30W2LwNQUUJrkHNAkfWrjowS1nESbMyTVP0qf
         azC9Hr07CMGKoeuTmHAQvEcr3h5+ZI2k5uEQFiLHe/hHOIZ7ML2iWiVSr9ve3i2+w3ey
         0IQQzykk2xm8lgi8IKBYXe12t46hMyytnsYZVdltB35Kz277yyzx5HLm4rGESGO170l+
         VwTrEE/235RPBPYoqQ7WMAL1rhlrZYuAQD5O+W0cCPSMIGN3RZwkO3wqiUrZq63/tOPc
         X3IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TtVHiKdT8JdAexNtpXpGgM31TLUVVe33qZUAIKzxZ30=;
        b=csCx3xlW6TV7meTRggtey+p1PB0eeEYdZaWa3ThTiVWxp5z9bDQVfMMaigxWiyL+Vv
         mSWFK2sab7oxbUIiR8KXDX2XRCbRWutBrjYg1z9OErLIWT8X+q2t/SYy7TDk4JWGGWit
         nF40GSe1bNbuTeETDDtEuAa0A7IynS3GdlY2DlRigpO90s+NLeXwSpUSwCrf81QKm3Pp
         vlefrQcF4XxxMQ3HHTCfhDnvKP+NWkUrMy31aHUsRk55KJs49H1iZJhpQziRYSiwTSlU
         /nPMDUwCxXWgQ732BW882+q8itmwlHQQErkYI3zs2gnnRfiXBtW2iHMrsGJFVNtgHVdd
         yVSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puada2+WFYb2KMKCJmX7vS2xMaYv1O7RUY2o2tMjyo858Wu/YorV
	mrIkaAs0jmY6gn7f3I7H6Ok=
X-Google-Smtp-Source: APiQypJX+vMngd1piFvLk2PU/rtktTIdLculkCCL0ZpB6GYeP2HfDy5bxuXLIcL8IvWdtgydO3ny6w==
X-Received: by 2002:a7b:c642:: with SMTP id q2mr3671715wmk.41.1588687317622;
        Tue, 05 May 2020 07:01:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:618f:: with SMTP id j15ls4243331wru.3.gmail; Tue, 05 May
 2020 07:01:57 -0700 (PDT)
X-Received: by 2002:adf:ea4d:: with SMTP id j13mr3923623wrn.193.1588687316880;
        Tue, 05 May 2020 07:01:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588687316; cv=none;
        d=google.com; s=arc-20160816;
        b=aC3o5PZnAiGjCaBV8iP7c7pzCnc1lIIKLuet7k3ezxtJhr1XpY6i0zsXZiQSf1KMii
         mMZ0GoKvypS8M5EvzB0BDobwWW8JNNtN0jzeITOjZnjky3GNZQAWIMKL69/4oyX1viS4
         MtPloF29RqdzRsb+C56CqBooNnOHRrsNhct3OH/h8xEKoWk5QqZucHnLdJbXZfEn1cdK
         3zFeZRtnnc8AarUkMU0od3mDCwVyYuLJRsuYm7ALqCWheCsCsZcR6Wa6RFnIBB64jErU
         lamYakO9oZl/Cl1yieRWYsM3b+c7dMIOCMYt84GK7Y6HflIOa00vvv3Hrp+yuqsM5G0S
         kd3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=DTat+pRGQPIO6iCi9StJBz1SO0+o3ev/dSXPpyoQKEU=;
        b=SiDe9Qf3KvKf0WlnQ+DmwSc5OL3bIdrH7CzDgBkUAE5nm36IrLADTswarjY4/VlKbV
         Cd7lL0tRN6PYNKuodfiTjWe23Ceq85p3Ojif1WCvyNrX1MlXZ4dq9+zyN0k31tSxAOJz
         xbjVdOq3dBoEXKD3tPH/VSDXphTrn3qH4hGZolzi8qM7hnZOq+dpmZ10tXlCG16z5sOU
         /Kb99xyetR3AzHmLAOiofEZzwcWPz9jElWg62HD8ppayyJf//9zVm1imsxowocZnBM8J
         xtmn6lTFwbrG5l4yGRlGbYfQQXWlQD7vUk7EgPUda9nEKJRcNKlvtPNI0Tgh0I9BAUwD
         8AOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id h8si97273wro.3.2020.05.05.07.01.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:01:56 -0700 (PDT)
Received-SPF: neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) client-ip=91.189.89.112;
Received: from ip5f5af183.dynamic.kabel-deutschland.de ([95.90.241.131] helo=wittgenstein)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1jVy8s-0000gm-PM; Tue, 05 May 2020 14:01:50 +0000
Date: Tue, 5 May 2020 16:01:49 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Josh Poimboeuf <jpoimboe@redhat.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] bitops: avoid clang shift-count-overflow warnings
Message-ID: <20200505140149.lyru5h2zxmkozn75@wittgenstein>
References: <20200505135513.65265-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200505135513.65265-1-arnd@arndb.de>
X-Original-Sender: christian.brauner@ubuntu.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 91.189.89.112 is neither permitted nor denied by best guess
 record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
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

On Tue, May 05, 2020 at 03:54:57PM +0200, Arnd Bergmann wrote:
> Clang normally does not warn about certain issues in inline functions when
> it only happens in an eliminated code path. However if something else
> goes wrong, it does tend to complain about the definition of hweight_long()
> on 32-bit targets:
> 
> include/linux/bitops.h:75:41: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
>         return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
>                                                ^~~~~~~~~~~~
> include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from macro 'hweight64'
>  define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) : __arch_hweight64(w))
>                                                 ^~~~~~~~~~~~~~~~~~~~
> include/asm-generic/bitops/const_hweight.h:21:76: note: expanded from macro '__const_hweight64'
>  define __const_hweight64(w) (__const_hweight32(w) + __const_hweight32((w) >> 32))
>                                                                            ^  ~~
> include/asm-generic/bitops/const_hweight.h:20:49: note: expanded from macro '__const_hweight32'
>  define __const_hweight32(w) (__const_hweight16(w) + __const_hweight16((w) >> 16))
>                                                 ^
> include/asm-generic/bitops/const_hweight.h:19:72: note: expanded from macro '__const_hweight16'
>  define __const_hweight16(w) (__const_hweight8(w)  + __const_hweight8((w)  >> 8 ))
>                                                                        ^
> include/asm-generic/bitops/const_hweight.h:12:9: note: expanded from macro '__const_hweight8'
>           (!!((w) & (1ULL << 2))) +     \
> 
> Adding an explicit cast to __u64 avoids that warning and makes it easier
> to read other output.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505140149.lyru5h2zxmkozn75%40wittgenstein.
