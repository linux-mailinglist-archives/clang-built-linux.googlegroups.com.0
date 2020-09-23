Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBOGHVT5QKGQEZOLGE3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7420D27565C
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 12:30:17 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id b14sf1206949wmj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 03:30:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600857017; cv=pass;
        d=google.com; s=arc-20160816;
        b=sjLkO6EcFT0TXs3/U1S3HDfeNI6/2BM/CtF6pG5T+A+zn1R8W5Ic4XyVz1KEUpGCfR
         DFeUapuh2l5byMeIFosTTXqqmVKXPnbswsPZdMvp0W54L2kMJaPV0OIrhWt66hqt3XOq
         DB/VCgU6tW4x4n9CpS7Kd3VkXn8X3PFEdnj4LmD90y03u+6tZODAHKnP1DcJU7GDPODY
         weCITW+2PxaBZToEFs0KdmCYF5KcEkVZFNYfC9jGcgUE1x+DD3nSrtE1SOgULf3gQOYX
         jVnSfB5bIkIIVl6i1I+7cYJRhty/js5477XxxKgxzSuioh7422R/Hk7I3K4MeOviG0dO
         4+uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=t8PY+ov5kEvDSU6xP8HkBhVkk5ZM8sU/mjKrr6FjYYY=;
        b=qY1/DpYL0wlzryiRvI0UwifJYgbHxWNG4hDNZNB+QUy4sBssvr4LkhYieaf0Za+QJd
         LNZszyDHAmOgrNRXLC6BdYg/8GttEpxz9hqfNG6Vc4pCvEC4Cwick/Y6f7n7FvGE1iAE
         ZaXawDqRZYta0ADoH2y93Dg2gdaCQin031QWatyKhFzjQUGTeHQcBi0FFpL2T+seRfNV
         tcQ3kJExL3/GRvRjT7Z4zeLsMjGOsHQeclupbNJxxvkOCYn0Ck/Xp7GWGwWoy+GM64MW
         kJExK4Np2WBXh5TIPINBWNO19Cq1WkHCEGMBTm22GqEK3w1I0yyHFs3xOIBqgnwpOYRA
         DK3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=a7FHINvw;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t8PY+ov5kEvDSU6xP8HkBhVkk5ZM8sU/mjKrr6FjYYY=;
        b=D/lUrbqkMy4bj2Kn9XPTxvRxzfo32NObLVmmI4fk7hgeGCVLmV5GJt/OqUPlRWPAnI
         LilYWxw5LmlgDWGItQyu22wmLOzsLZaVDrfictX9e58EtsxlWIL0tsDb8WcVYcrkrz14
         4gO7hxaUNzwFph72rJFDvNKs52BXanGO2/OW33tZ5+w84ZAPnsvFzFmQ2kBIiq+siF1l
         p++ypSKXbLdibbYtHJwWT638Kk9L0E0rWitdPnHTSEpjAsM5sUQHIU+UxfIJsQeZDfNp
         4wFwvAT9Yum+/s1Y5dp/0Z/ubZRIJ75eUb1Aa5XcBo787ebfxEL0kN0bMMtEvGUuLAbf
         GQUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t8PY+ov5kEvDSU6xP8HkBhVkk5ZM8sU/mjKrr6FjYYY=;
        b=YbpoIlxpGZzu89Y+XLGCY1qdCHhPVUVbzlLZ8cUozzzV4z2/veQmrq4MyunNTjO72l
         8erPlBB2LE0trPDrbdbnONGAaBLIHaOwcF1IO4ZywJ0nW14Nu15jUo+2MA1WNtgTsYhj
         pzerr9fTJizfkm6V42BHfWO0OcuAvrA4iFOIv8GFLPGGo84D9wwkSEmOgcUVQDV3hcTT
         XMsux8hz4TWMheqAA4sUbZXQzyAKRwqbUH7doSAv6poOuxdIlaL6pI/gUlvZ7W1pf/+M
         a/44mJ3ky6aTyYLtL9sxYaUqAoCjwinokHJn4HicwJJX+p2NZfVed6wWXH8duYe521xb
         9Czg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LF7a3NtkhT4rvATz7qYpofIPV/jhKV/m/y0dPWwZxvWbbnXhU
	3g0xDuPQNHxlaUK2EcK6M8g=
X-Google-Smtp-Source: ABdhPJz/iqYHjI14MI2tO3YbLaHC6fvHObWYm3pTzGwUHoR6xfWD9nCtzfuzBhRncAoLr3X7vox1yw==
X-Received: by 2002:a5d:60c6:: with SMTP id x6mr23582wrt.157.1600857017150;
        Wed, 23 Sep 2020 03:30:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:428e:: with SMTP id k14ls944011wrq.0.gmail; Wed, 23 Sep
 2020 03:30:16 -0700 (PDT)
X-Received: by 2002:a5d:4a49:: with SMTP id v9mr23777wrs.153.1600857016270;
        Wed, 23 Sep 2020 03:30:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600857016; cv=none;
        d=google.com; s=arc-20160816;
        b=kE6t9iiWHqtoHb2sjxHmH1qq3jNiw9jh4JznypC5WtxTf3caM/rp3MBOfAaNSPnxgl
         D4O0yaf0xjDmAHB5L97OR4zqLcxuefyk/1I4O9zlvHEHXTFv279ajYyQjGxbItt3+DnG
         dxGTjCmZot02ibokFuJgaKAHLWLNUCYpmWia9kw6L3hmrDrnkd5cxhph1jd4VUCO3302
         aXgRxQC5L6PT4XIipApnN7rBBxbfT9EwDoS7Cxi6G1J/2dNpFmWC5ApgkY1CxnJ6wYv4
         vDBy4O8fC1DPnMkYW2sg+DhD3nKLni6hHa610CiN1OcmZ80zzFNOvkmHDWW9UVs8tOv+
         wdbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QeE5wPLAtIBCyxy/tK03AVY/XVSUEjZ0YhJ2DYbcq1g=;
        b=fwMSA9wpa6jX3PPNeDWANRrjHO6d376laVzxr7qwF3oNnxkpkAYlddbOjR8yB/3eRD
         IpXooUsZYe8TnhAqBy9CDyfH1HGOzNANOaYQNKgArwDS2gxqhvcJB3+tBBrnw0e+pvsy
         GpplriUMtN5zbNXD5LOZiX83NT8vbNY6bHG6lilxzYY6wwvaqFssEEfdbZSfyqLAwAO9
         Gd9BADG1MD125Dws0xTufgN/wbDSqKL+RrqRflQ0AbtQrWrwvbBByJYGK/tfvOGcY3Wu
         0WXRSLMI4TZtslKhr+J781BGUYf/alZe+9SkoubMUhTVzbe35L+NGnGFB0cyG+kOyM5g
         wRfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=a7FHINvw;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id d19si166804wmd.0.2020.09.23.03.30.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Sep 2020 03:30:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0d1300e5068c8a3292d31d.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:1300:e506:8c8a:3292:d31d])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B0C3F1EC0409;
	Wed, 23 Sep 2020 12:30:15 +0200 (CEST)
Date: Wed, 23 Sep 2020 12:30:08 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: syzbot <syzbot+9cf5373b0e15476f39a2@syzkaller.appspotmail.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: invalid opcode in map_vdso
Message-ID: <20200923103008.GE28545@zn.tnic>
References: <00000000000096760d05aff79022@google.com>
 <CACT4Y+YGFtPCi3a-ByZGs1kCFfJOYv_AbkxOG=K_D4xh0r4okA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+YGFtPCi3a-ByZGs1kCFfJOYv_AbkxOG=K_D4xh0r4okA@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=a7FHINvw;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Sep 23, 2020 at 11:19:40AM +0200, Dmitry Vyukov wrote:
> +clang-built-linux
> Looks like another one with kernel code overwrite in clang build.

Uuh, that's a nice and refreshing one - the pattern is not zeroes this
time

Code: 16 48 89 ef 48 8b 34 24 31 c9 e8 88 7c a7 00 eb 7a 4c 8b 74 24 28 43 80 3c 3e 00 48 8b 5c 24 08 74 08 4c 89 ef e8 4d 77 70 70 <07> 20 05 00 00 49 03 6d 00 48 89 e8 48 c1 e8 03 42 80 3c 38 00 74
All code
========
   0:   16                      (bad)  
   1:   48 89 ef                mov    %rbp,%rdi
   4:   48 8b 34 24             mov    (%rsp),%rsi
   8:   31 c9                   xor    %ecx,%ecx
   a:   e8 88 7c a7 00          callq  0xa77c97
   f:   eb 7a                   jmp    0x8b
  11:   4c 8b 74 24 28          mov    0x28(%rsp),%r14
  16:   43 80 3c 3e 00          cmpb   $0x0,(%r14,%r15,1)
  1b:   48 8b 5c 24 08          mov    0x8(%rsp),%rbx
  20:   74 08                   je     0x2a
  22:   4c 89 ef                mov    %r13,%rdi
  25:   e8 4d 77 70 70          callq  0x70707777
  2a:*  07                      (bad)           <-- trapping instruction
  2b:   20 05 00 00 49 03       and    %al,0x3490000(%rip)        # 0x3490031
  31:   6d                      insl   (%dx),%es:(%rdi)
  32:   00 48 89                add    %cl,-0x77(%rax)
  35:   e8 48 c1 e8 03          callq  0x3e8c182
  3a:   42 80 3c 38 00          cmpb   $0x0,(%rax,%r15,1)
  3f:   74                      .byte 0x74

Code starting with the faulting instruction
===========================================
   0:   07                      (bad)  
   1:   20 05 00 00 49 03       and    %al,0x3490000(%rip)        # 0x3490007
   7:   6d                      insl   (%dx),%es:(%rdi)
   8:   00 48 89                add    %cl,-0x77(%rax)
   b:   e8 48 c1 e8 03          callq  0x3e8c158
  10:   42 80 3c 38 00          cmpb   $0x0,(%rax,%r15,1)
  15:   74                      .byte 0x74

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200923103008.GE28545%40zn.tnic.
