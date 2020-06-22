Return-Path: <clang-built-linux+bncBDRZHGH43YJRB46IYP3QKGQEHGNGP3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5DC203D5F
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:03:47 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id b14sf10922290wrp.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 10:03:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592845427; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z5UZxyCua/S1ywpf6+oa3UVHCpmX1CRIKdxH85gTu4BykLAoqPFdgxPOnMSFytasMA
         2RU6ScKNwIAQB66F3dpyUQoIyXu5jSw09ZjzWiHEcRP54rlExayQSv1bNz5VHleGv5b/
         tR+QFVOse8AZVt+4ch1at85owoYMiS85sfgQAVG4UX2wdj3lxurSaU7lqtJ7vm5DcFne
         l50h9QRYlKTrMZmb87jNYDeOLNv7UPEMj5PdZVO0igRY54avKnLjAcN62WzwqyyS2znn
         QjR/ojudeQvZyMfNzOR4smZAu3zPruCODOHQeKsVDbybytJAW4pIJvf0sZ3FGhCjmHSa
         Pqdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=hbImCg6B9EoVxKqfOsQ2w3UFtjbylM0WVyvapD8vAEQ=;
        b=Xx1Hvbhkbgk02rIszTVRJDXA4fU8DEr1cMBzZXhgMOVTJ6DV1zIBetv+kmcWaGvjoB
         lpoaeIx2AK1JQ1Q1N0tGInArd+552KqkfmPDXZ/AFeTbpKKSxgYcLOiq4XLps3WVf18R
         I4nREDcla0DSHFU9nJnHDHmbBHuKorv5eTuqIquu6TK+xQQ+500IvGzoAcOMP1MEqs4B
         JjAZiAIzDbTKYkcH6WmTcZyQRya5Yj3mQbvNBJxBDvETRiwsR0B1a/PKxpWc1TRGl77S
         Q6qaBgDgZX3R1stpgdNChgt2QCPX6z/e6XrDtF+ALwoptNgnD0QaybkHCeNfuwE6sVht
         htpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UWl5j4Pm;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hbImCg6B9EoVxKqfOsQ2w3UFtjbylM0WVyvapD8vAEQ=;
        b=N5rCOswKvllFB9jGOMGjA5KDFrb3oC+vgdBbQOteADQV0Ghhyl4LRJpVRToZhTVEWM
         xbT7rARdIuH/4Y1fECo4zQ9I3M+tk7mPq7x1ZsKbs94VD6h62VfhfqUZhYgUzbm2xTu0
         XI9WSkY4Bv+0jR9oVFCn3H4tNjDm302hDTBbDILCQG6OmxM8+LGVkHKiD5fbcx+M4lvq
         3+szdlInnOC7Acni7BfWIjPUlLyjHfGGFS1S7KQPeX5BsJID+54u3/msFTFMIqtmoNMJ
         EnkNXaoK55j76jiXjqsjT5GlN7xGvbQTtZrrxdN3xDXxWom2wwOFARs3K6MrQYn8iUxj
         qh+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hbImCg6B9EoVxKqfOsQ2w3UFtjbylM0WVyvapD8vAEQ=;
        b=PMCaghUAm94HauW5oDtz7x6uwXI68bFxLZyxlr/iGExz9Z+NJhPv7Fe3URfRyZaAel
         WxpLLxTR96w/QHIUN0OMJ/rbY7ccnpZCN1NguuhiZHNvCJoXU9y/3jBkx0f/hKEoJ0ac
         yuCdTdVefUxTYQ/VHHMv5YUQrhJvvjaLFri0Gxjca/zJOAIQLBGvamLE8s+hfTLQ1pwd
         iJJ2n6LTkcPkMah563yN0zQOc0Nt1MIDOB35qOnRdIcrRxDkMz8lF+cb/j/QoOM34+ha
         Nt1sVUS4YQ9//wW/g3QW8iymjfLp0Hhcxo5DtgT4WXNZBmHS6Ew7aRMauDa+4Dqjfhxl
         FRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hbImCg6B9EoVxKqfOsQ2w3UFtjbylM0WVyvapD8vAEQ=;
        b=i80qRC73xCugGO1DDXW9zbHQZDxj1w1JDvOgYym9G9SRLUjlfHp2RCz3nTokWKkaBQ
         BfLvcn7/ndnukGPwSEWXUy21J9WnLNJxcYnh2cmFtSvTd3FdPK2HK6+wzD0lecbXZJNH
         /qNADeFcJmwO3nkteK/hGNQtR6YNZ84T8p3zn9GVmik5xFEaI/OmcS0E5qhHv80lGkF+
         FGyu0wAyNPN7krGHQsWmLocgXyp2Jt5G2CLdMuEN29HhhSCT9rXCvh/yE85I8x06mZRh
         e2LgxD8fepYGQvxkfG0rIPzFnyRXccM/UtUTDGYxqTNsj3BM5oKliJxp1IUXj9Wjh3fZ
         F9fQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xE5ffgEpKESX98HI7vPPr8tGHoaZqmuqaCWKDtWaJOetgoPpe
	apJDEIy2RkHsPwyllGT79x4=
X-Google-Smtp-Source: ABdhPJw3qCZc0mGkIi2SDaVlHJPNxO193cnzex9//lmg49UiG1BfiNUpB8Ol4klUsMnrj92gdrsONw==
X-Received: by 2002:a1c:1946:: with SMTP id 67mr20554089wmz.59.1592845427271;
        Mon, 22 Jun 2020 10:03:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2301:: with SMTP id 1ls95226wmo.0.gmail; Mon, 22
 Jun 2020 10:03:46 -0700 (PDT)
X-Received: by 2002:a1c:dcc2:: with SMTP id t185mr20391743wmg.91.1592845426573;
        Mon, 22 Jun 2020 10:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592845426; cv=none;
        d=google.com; s=arc-20160816;
        b=o2Mqfc51Y1KBkcwrh8sUoTViCxo3QvX/Ivg9Zju9OtuRh30fM7mSm6IO2vPoOpZj3W
         0kTBeEA9ZE/u17lyr1TZ7h7z64LZHoZxrai9IVK1E1uh1J+I/Ym6h0hLyxgvcvLYEykR
         azsthU5d+7JN4tFOip2fJgKkNIs+Hnw0d7Z4R4TwIoomxN/sG+DYUhvT4eKemXiiGF4j
         bAzpX99XtYpaQLdeDma/HNR3u70VlD0JbzhGYfKl2TGA8/SZV/LzqrMnvKzNQArVHhrN
         92GbSoRJYGL7rfMFpc5qWipN4wh5MwDwJ7JH4mMPF5MhEDQ50hUNP6PqsgfZFKJ95IPL
         HmJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BEWXpHZI1JNpxufz3AD/YY06ImwhKqXlN9PTm0SkH0c=;
        b=rcus9daq5I41Z8dc9KYjo7C2f2VvbZqL2yy5NbFTMmiXJO8VJFVGP8zVZvy74Uw4uV
         zpYfRk/GhhQLaqFp4h3bEJs5cmv3A1/Iacn5G9da7i5loAP33PiMAVMtHkvuY2wS0J46
         lMZKBPZJ2nly5MlANlap0A0nwBvEH5ZEYuayoVKmr9BNE0GlV7N1DsYlT3Ajj6PxrbsR
         PE2JLCuk99/LCDv7CHjI7I3kC+FG3CNLC78rhHhrh39/zPQfnTHUENkdg2BGDe0a7paj
         TMN7SNg+lqdzwxiM7JJNx1usdrpK1Ql2IQpRObhJwFhsYCTiMGrJHPTEQGB5n1zGnmNc
         L5Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UWl5j4Pm;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id s18si6534wme.2.2020.06.22.10.03.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 10:03:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id n23so20147478ljh.7
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 10:03:46 -0700 (PDT)
X-Received: by 2002:a2e:9e86:: with SMTP id f6mr8180394ljk.95.1592845426164;
 Mon, 22 Jun 2020 10:03:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
 <CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com>
 <b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de> <CANiq72=Y+beqZ8Dmieo_GKbyaLN8Nf1n3bVntj_o90Cn-nADRQ@mail.gmail.com>
 <20200622070623.086f1623@lwn.net>
In-Reply-To: <20200622070623.086f1623@lwn.net>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 22 Jun 2020 19:03:34 +0200
Message-ID: <CANiq72m6BNYe2ETNXJ2oLc6Jzad6kBBJK7_dz+BwZCeqYFXZqg@mail.gmail.com>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: Documentation/process
To: Jonathan Corbet <corbet@lwn.net>
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>, Randy Dunlap <rdunlap@infradead.org>, 
	Tony Fischetti <tony.fischetti@gmail.com>, 
	Chris Packham <chris.packham@alliedtelesis.co.nz>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>, Will Deacon <will@kernel.org>, 
	"Chang S. Bae" <chang.seok.bae@intel.com>, Joe Perches <joe@perches.com>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Kees Cook <keescook@chromium.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Jacob Huisman <jacobhuisman@kernelthusiast.com>, 
	Federico Vaga <federico.vaga@vaga.pv.it>, =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>, 
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UWl5j4Pm;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Jun 22, 2020 at 3:06 PM Jonathan Corbet <corbet@lwn.net> wrote:
>
> As has been noted elsewhere, checkpatch.pl seems like the appropriate
> place to make this check.  As for "the entire tree"...if this job gets
> completed, "git grep" should be a fine way to do that.

`checkpatch` is not really enforced in many subsystems, no? Further,
some existing and future HTTP links may support HTTPS later on.

As for `git grep`, agreed if we reach near 100%. Otherwise, no. In the
general case, including the code for a task that has some likelihood
of needing repetition is a safe bet, which is why I suggested it. The
same script could be also used to check for broken links and related
maintenance.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m6BNYe2ETNXJ2oLc6Jzad6kBBJK7_dz%2BBwZCeqYFXZqg%40mail.gmail.com.
