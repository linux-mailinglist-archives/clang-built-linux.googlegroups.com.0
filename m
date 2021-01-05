Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBYFV2H7QKGQEDBROUIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id B23872EAA9D
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 13:26:10 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id my8sf1694303pjb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 04:26:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609849569; cv=pass;
        d=google.com; s=arc-20160816;
        b=s3ZRid7qo4fRrSGQ5Uf/8PabtMnLRV9syJMt17b2eUtHUWOScz2ayngCKDr+yKaDGj
         Q5xwt03n+CNOuzIWp9hcipJLj2MFptqGnf34jKmVivu09hDUIs9Tnl1griQbECT2xNni
         LoqlHN5oaHdH6KJycoXtXrXK55UV02yYE/r2P+uaCjSxOwWvkyK8bVF1W4h6DQmYgQjD
         Q87wFtK30jcBelU6Oqp/kBj0SU6as8ZLCQcmoEOEUV1MyzcAMfA/3gnPirb4mAfjM6Dk
         e3SASC0SiN3NiERYJkMXOv4Z4nC6TmRwsJKelUudCEyZ0KuOtWS2q3gYdkn5CZ4Vcvyd
         YFRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ot7Uehl9Thr7UC0Z0cIucAfdGhYeeaCrK6tBDclXKQ8=;
        b=sd325IzVXmkB+4tp1E8V6JImBY4enZER0wvr3x+89VpJF3V3DVwj23Et/QpoTCycu2
         jlcxcSAA1CTz0Q3W2Y2OwANF9quw6UoU5i/5nC74Cxa0yqqXOSnSVm5M5HVD9JuYDIOu
         9ndyrflxr1T//OljuA/qbO5cgx2uNC59s2TP8nRlpQ2Ox0tcd7JaH0feILrgemE3r1ke
         PWLtDRQVU6IYCg0x4OU9KpWTHcYO/A0Wyw3IiXMDvIvHiZwE5KNoMphwNJPMx1jtaA+d
         FhuVLC2+X9Y/ckJvkbIpwy6tIWmfwNhWgkQkru2IAKOQLtNDmKRMAgIJkX+4NjGH60Z8
         zq1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ot7Uehl9Thr7UC0Z0cIucAfdGhYeeaCrK6tBDclXKQ8=;
        b=F1xLkhkIpQemtfI2bEHejAAb7S/0LGckbYKdBhh0yLd2vD0eZgbseA79CjTorsvrUF
         Hqrlt/ars7xvr8GudE7uNpktc0DbJlJgEmNEQ1Fl2O4WRAtzKDQnC2ppKV4bj2+OsS8k
         ex7GdBIh3Z4hidoTbGDzmflq90jcLtS7WDqugec/gTTvpw816+SAbzXT5PA3Cxozg5Yi
         B4aUUd+dK61YZ3DgODsqUtvUe7UTpGQwtbq+20VQTPvcty0WikPPU/WDWDTl8AtTR0Ac
         dalIsQQcQK2iBM7LIRy8ux6scm5U4z0g75kKMMnEhrkfYnMyohpngnoYTyOJzTfTBMm2
         z4uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ot7Uehl9Thr7UC0Z0cIucAfdGhYeeaCrK6tBDclXKQ8=;
        b=YxRE3P4yWOObgCdSNdqqaA4fGvacjm+tSUxaWUP8Og70obAaCTtvK0Yqj39E0T2Nsu
         A4IACS81BhWPuNApWUdmeAuGhc9x5I/yt/u/nNpGHveiB7L/3EsURiVtOTpSiYXZj6zu
         tBB+h3VbFB9cVx3Nrm43ie6h7PvgVEjVsjDjzYfl4Aoxj/dVhUb8L+7i8qCcSwNieQY7
         qMydDva6vkjz60eSKxwGN0sq/PGDPWKNwlSExhGm+EN5yZ7zC1M6Dj212hq+ptC6b3Qy
         mmyz0/hastmIBCaErBDXYSaqbelYtqykHW4pP+R67d1yPEystLzLaInzgL59TqcH2ViI
         p0nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uX8AYRUIPnPzaqwyRPIW29mEm4n7f+NTqyY2Pd6PUWBF9hqUJ
	khgG2J1AsU32nrC1sklrDfc=
X-Google-Smtp-Source: ABdhPJxsHnzqN6tv7SAUHvL0KWlsgcxmIZXpkfWcs3B06K0nHqjWgvAU7bY6t6m/AHKLbtLMrvGIMA==
X-Received: by 2002:a17:902:b706:b029:dc:3817:4da5 with SMTP id d6-20020a170902b706b02900dc38174da5mr52663760pls.23.1609849569069;
        Tue, 05 Jan 2021 04:26:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ea89:: with SMTP id x9ls26458007plb.2.gmail; Tue, 05
 Jan 2021 04:26:08 -0800 (PST)
X-Received: by 2002:a17:902:6bca:b029:dc:34e1:26b1 with SMTP id m10-20020a1709026bcab02900dc34e126b1mr58172464plt.52.1609849568245;
        Tue, 05 Jan 2021 04:26:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609849568; cv=none;
        d=google.com; s=arc-20160816;
        b=hCP7tb3gX3HJJ3LwpAs9h8SVXZ0F48H2oK4GQAO2TZkDca63ieoeDEJLtq1g2DgB/h
         G+TtbNzmNWtA0Z/a1zsppp5zXOmsysFsvougwxde5NUOy/cs2c9MszVUQAc2lPuQAATj
         4RsOol5ILQwze19Najem7zI9AiuQ/E9ZE3pFofOJFfz1VXAZfYKsbLVZc9fvvgHlT0Q9
         dRoRTM82vFCqramo5zo6KMOLT94yhow3jquWNzrWw7m83JELP6JyCkQX2GD2Sv6iOfh1
         ynJFh0IyMIz6xL4QcMz1hjvcc7qTwP36LR0wIFyJLMopMxHfDTSPWAgd9gKq+Ts13Uq4
         A+cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rRWAbuCTfcRhnmEUTo0nCbcwEVZqsh4vAzXrn3W3mjY=;
        b=EF9AnFtIeXsjxSOYM6SpaDuHdjpWmdVkfhKicKNV5LgvUgQNsprtXOn5P5xLlE53Cw
         YWQ0Z5emkOjxgFrc91pxa57rlT8+q9GJiwS9YQWXLj1s8A+kTeD4XtgrjkkMW9v2BhbD
         VCG7o7RQ1LiAf5nvDuorsD01lyvWSUUYxEMwbkLqDY43Cq3yJL+wIfCLrAU5AzF7LxNq
         oM5KJD24qf+eq7ECuVGw4PqVHw2jaO5Iub5zhDIPpEAVualg5YgXm3OgUHiiPSnceR77
         BawRpNxdC4eIuCT1JBTDkMxpDhAD3nHPe7j/sxzYQdDhZKNKkej0dzVKN7A6Alx30Qe+
         7OkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f14si2892149pfe.3.2021.01.05.04.26.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 04:26:08 -0800 (PST)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9B39522AAA;
	Tue,  5 Jan 2021 12:26:05 +0000 (UTC)
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel-team <kernel-team@android.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	linux-arm-kernel@lists.infradead.org,
	=?UTF-8?q?F=C4=81ng-ru=C3=AC=20S=C3=B2ng?= <maskray@google.com>,
	Alan Modra <amodra@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Smith <Peter.Smith@arm.com>,
	Quentin Perret <qperret@google.com>,
	linux-kernel@vger.kernel.org,
	stable <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] arm64: link with -z norelro for LLD or aarch64-elf
Date: Tue,  5 Jan 2021 12:26:03 +0000
Message-Id: <160984952218.5069.304716966175823056.b4-ty@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201218002432.788499-1-ndesaulniers@google.com>
References: <CAKwvOd=LZHzR11kuhT2EjFnUdFwu5hQmxiwqeLB2sKC0hWFY=g@mail.gmail.com> <20201218002432.788499-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Thu, 17 Dec 2020 16:24:32 -0800, Nick Desaulniers wrote:
> With GNU binutils 2.35+, linking with BFD produces warnings for vmlinux:
> aarch64-linux-gnu-ld: warning: -z norelro ignored
> 
> BFD can produce this warning when the target emulation mode does not
> support RELRO program headers, and -z relro or -z norelro is passed.
> 
> Alan Modra clarifies:
>   The default linker emulation for an aarch64-linux ld.bfd is
>   -maarch64linux, the default for an aarch64-elf linker is
>   -maarch64elf.  They are not equivalent.  If you choose -maarch64elf
>   you get an emulation that doesn't support -z relro.
> 
> [...]

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: link with -z norelro for LLD or aarch64-elf
      https://git.kernel.org/arm64/c/311bea3cb9ee

Also added the second Fixes tag with a cc stable.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160984952218.5069.304716966175823056.b4-ty%40arm.com.
