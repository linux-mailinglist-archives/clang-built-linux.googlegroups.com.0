Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLPA7LYQKGQE3W2OIOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DA79015644C
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 13:57:18 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id i8sf1552762ioi.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 04:57:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581166637; cv=pass;
        d=google.com; s=arc-20160816;
        b=V8xOCec3IWnL1+ZoDGmyankb2YZGHAZ8kAg+p1VM5CO4SJlFLAYqOEAw7QauLzyeOI
         JYQhDmJs0DF7N5qQ6/Ap6WMqf7qrI1cHN9N5PUsKn5Kam3zGEbIKaG5wT+Iy+o8dQ9my
         yzLWKEMIrO2DZOjTONws2F55IxHNrtxxl4XQiC/5kGhLKtsamaCbs478QIJOV+fRzuG4
         TqyWr/RV1/Ul+jqU1DObybcesZWr5yzHRTsbBZONjwKjeCPBZ9bYxwZ6vaur+rQQ7Z9Z
         RhB2z7pSYPAuJe3ZPsooTiN0lZ+3aEi/FkKmHC/+ok2ylVqi5eb2Yta0ht0tNDL6CnOS
         Cj0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=xU9/utBhX6x69N69AJNbjiVjnW4sWXg/zNexeYPf2Ck=;
        b=AQzAv6oRA1R90cbGI3dF+havS127VEFjHICw1jZFd/8y6yqiC9h0knzS2TTULZL5RK
         QyqHTpDPBFgzABv1XzANIIj1oEhc5GfEZerCiSM+ijl5ylhESK5NTXcGH5v3chwdL207
         iNHlLGd5e6rY4UZQNFx2+p1leWLSsTMFQW2KZv39FL0nTppxn8XDAqNBrVfj7rB3wGj9
         m8BUF07fS97pOyyO0hYaXgV0pUuaFTQtiO9DNEdLESkkXsEaaFq9ryLyNbzYkqRAj1Tg
         VKccR+OYC6+yj/8jNZl3oFXCAveheNGlHinTcB0X9e2Ru/heQL/mMr5NItx8trNVwb0p
         OE1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xkf1xa7C;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xU9/utBhX6x69N69AJNbjiVjnW4sWXg/zNexeYPf2Ck=;
        b=FQAyLV2ZWfsxSR9oO3y414IXziDMKdMETORFFQUJ9oPEBri0xlIfxEdjNM/JxwlzeU
         0HdWWpG8opucWzUepBlPgnVV4VKw4ws3jy64OB6t8h81rPnGSzTUmJoxq2rTGXS3ARwu
         INzRBzU/MWpLv+a+zvniAcdPJKxfnJcgAhq+48cHAQ2Ow1viI/O/ceXu+3ZkFMOFnwG/
         v06Xr2sUskFzqXhvBqguNhRhzO+LKw+trqSfWkkRthXJhxGe0XnXAW5mPRL36Dmluigw
         hDo78irMtNUb+PabL3TTkCffyD/lJxSGIgnQB4vgba6vf35e6bGk6p07qQwjONLGe0mD
         tKEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xU9/utBhX6x69N69AJNbjiVjnW4sWXg/zNexeYPf2Ck=;
        b=neF9z80otRtmipHzEfLlH3ek4kCpzn0A5tM7oGvlFWPTaqNGrHImOhI/FgegV8BSKG
         dSnqmuvhlfTB90ZquY1MP+C/gfeVey0qq4A8tNUklRDDmmEJadFQJtKp5KC54C1D/UCC
         FRzn/4dzKSXB8UkaH8SVIMDqamYWCKjLyJ6hQ1A3tamyzKUeCTODtqUDqY5+DguKe1m9
         rVsUJAfxjAfoY5t/DZRs2SGdQ4+6tO+UC5cJHO3eJD7mI/IlM0sOnJcuj5RJh/YvtlAZ
         dYdcxnI8mbHTq1/o81/O6s63m6n0lwL5Ooy2eLmltROnR7WPW+qWq817zKP7UVXsmZbB
         F/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xU9/utBhX6x69N69AJNbjiVjnW4sWXg/zNexeYPf2Ck=;
        b=p5NIYwj5KuEOFMXpdCVenswD5Td0fQ7BeJq8vr2CBvOHmR0Xx9hHWljUGeLf/rwFTX
         gJ0IYBSdHMgemKIiTIDoWDqtFg8IZp5QRPCes20vzrb484mIJ/0QZiZH7DzSRNMHKxOf
         ee4JVbtt3MH5Iarjfz9mQUQcZa6PI//b7yxi7wBUPtfvuLoYBTTDPryDttz4Jnwedl5S
         YX5yWU3PYl7cTrnvuHrQTxa8VbYKXccIuzY0N/6MxXlPazAPZRZ1yZaMKHKycG8TxYl2
         AUM/xoYa2lMagysSnHr1UU5z4ooXoJpibUV+Bqxwhm57U4pDUCPkYzCjdh+rfppvkf25
         CJkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUgPLfuOyTpVTLU1jUX30lAruBoL/TdAF+cdLN0LI2emJw8nhl2
	IvWKKYrdOtHbvQM+PmgGmTE=
X-Google-Smtp-Source: APXvYqxpYbrxDcwTI7lIAM6FZQbB2EwWCqwcC9bTdmTDgrowTsfa3f7ya7BNEUSkCAhwTFXMrkJLlQ==
X-Received: by 2002:a92:c04e:: with SMTP id o14mr4462930ilf.133.1581166637437;
        Sat, 08 Feb 2020 04:57:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f13:: with SMTP id x19ls536507ilj.0.gmail; Sat, 08
 Feb 2020 04:57:17 -0800 (PST)
X-Received: by 2002:a92:9e4a:: with SMTP id q71mr4438129ili.224.1581166637040;
        Sat, 08 Feb 2020 04:57:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581166637; cv=none;
        d=google.com; s=arc-20160816;
        b=xsVmbV8zANqTUgXXmK4FS7njBjE0iw5U/bsIUtWj0vVTzIcPyTtu9TKSA5EwN4g4/M
         kn1peHq88OzXBKr3zeypYcyX34NY/izd7zT2qfPw9QVUbqqYJp6mI3un/Qf4qhL65qyN
         IIETFsaSaCbjNH89a91KUrwcQFmzSSI9xn13WYactmJ7h16TlTyjvQKiZEs6mXPqOkSn
         9YUqavDginRH4v1rpfDYSuPp8vHFaiZe6o5GNipSm6W9cUnNIh4h550NtPTZ3G6rsP1z
         /lWdStjvi/v7zC7eCys7Lg2CnNpBGJbv72L/TVQTIujtCdLiLLZcY3Gc2NWgr3/pKj+x
         J7Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=jAAF9lIe2xGP+2h6TNe8EwAWXReyZL3mgZUzeJxyr5E=;
        b=K4hRKIeihAVPpKoIa60BdasjN8qJ2iyUC9eutrKgfh5zx/rLo6H7RtrJuZ8e3WjqcB
         xZGJpw3y3d4Xbbt2Ex/ONwKmwsuyBm0BV0UmCtq+qIsARNxlbfFkyclArc2Cv+fUDrhF
         oTDH9NwL0RbyawtzOm7NPufVorlhNjs+Wc9xEUnV1iFtFxYtNoVS+eff67gWt5xHfd6p
         KXv42Hzw1tfdl2I/ZWyvGgOELgBCQ4g3ESxtIQSAWHBqcV7diQLt9rKn6VJ9h4oXAkKU
         QxLWGCFaka63J+cEayWfRDUzQ58RHdYIxqCFxnLbxTfa0NMcvINFg3V6XTxf8Miyw8w3
         oEfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xkf1xa7C;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id k18si156075ilg.0.2020.02.08.04.57.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 04:57:17 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id j20so1986676otq.3
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 04:57:17 -0800 (PST)
X-Received: by 2002:a9d:6f8f:: with SMTP id h15mr3137323otq.1.1581166636560;
        Sat, 08 Feb 2020 04:57:16 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g5sm2262251otp.10.2020.02.08.04.57.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 08 Feb 2020 04:57:15 -0800 (PST)
Date: Sat, 8 Feb 2020 05:57:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>
Cc: linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: -Wtautological-constant-compare in arch/s390/include/asm/page.h
Message-ID: <20200208125714.GA9164@ubuntu-x2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Xkf1xa7C;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

We noticed that you all added support for building s390 with clang,
which is great! I have noticed a few warnings for which I will send
patches but this one has me stumped.

In file included from ../lib/crypto/sha256.c:16:
In file included from ../include/linux/module.h:13:
In file included from ../include/linux/stat.h:19:
In file included from ../include/linux/time.h:6:
In file included from ../include/linux/seqlock.h:36:
In file included from ../include/linux/spinlock.h:51:
In file included from ../include/linux/preempt.h:78:
In file included from ../arch/s390/include/asm/preempt.h:6:
In file included from ../include/linux/thread_info.h:38:
In file included from ../arch/s390/include/asm/thread_info.h:26:
../arch/s390/include/asm/page.h:45:6: warning: converting the result of '<<' to a boolean always evaluates to false [-Wtautological-constant-compare]
        if (PAGE_DEFAULT_KEY)
            ^
../arch/s390/include/asm/page.h:23:44: note: expanded from macro 'PAGE_DEFAULT_KEY'
#define PAGE_DEFAULT_KEY        (PAGE_DEFAULT_ACC << 4)
                                                  ^
1 warning generated.

PAGE_DEFAULT_PAGE is always 0, meaning this function never does what it
is supposed to. Is this intentional? It seems that commit 0b642ede4796
("[PATCH] s390: default storage key") added this and it mentions that it
can be overwritten at build time but I do not see any infrastructure for
doing that. Any clarification that you can give so we can solve this
warning would be much appreciated!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200208125714.GA9164%40ubuntu-x2-xlarge-x86.
