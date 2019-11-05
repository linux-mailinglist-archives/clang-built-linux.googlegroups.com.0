Return-Path: <clang-built-linux+bncBCM33EFK7EJRBQ4SQ3XAKGQECQ6FLLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B58F0001
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 15:37:56 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id j17sf12245102wru.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 06:37:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572964676; cv=pass;
        d=google.com; s=arc-20160816;
        b=yZkbk7PbkxkOLRMD0zbjYw8u6wZ8AxbxznCUwPGxS5R3zMiQRU1K5P1Nb52MOjPObE
         LTnHCn50dg7S3SFlcCiyuOGGJ7YNTIVeXnvY82QQPAF5EEEbWM2/Ep9qMGsFRnPyxPc2
         uxm0yzL7bz6BgM6MkBgAMFnh1gM6Oba95jmNpGe4FU0Q/WsaGpdXogMYF7ubj7TQ39M+
         nrbDK1csfuE3MmdFeyWKNXKhM2XPQzWY8KVfOkrLH9e6j8non9q+QLsJsFBqSdV/hZTx
         MmM3lLkXPaCkM4xJutjyqcJexhwr+Hxjfj0v6CGAhKmekmszzUSYWpYvDcM2yn8T9XGK
         lWSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=npEtngocv5CLAEBSU2WHXba47z1hoQhnO9muphVhPM4=;
        b=NvfRocMqW+gbYxv167hDX0gb393QxlV1veoB4kzmYQqWt+7tJrTSyFWGc2BGFIBpG1
         221ZlGGKkX5tb+eH5i+0dQfVhWBMl+ibPdjXkxVOx2moSvYheKSlsbj0AAKyL3gqSYo4
         vokfTwJOVgicVC+cyKoHKOgbrg+bXLVtGN6/7G/jCTZh/HL+KtI9VKz+kIBxQmH8HR2T
         kToFGEkHQC+XaVT6HHAJjobrCavIwnIyuKVOvbAZLV7KeOvYeWIm5mXMKxtDdH6Am9qT
         DEy6V6YiCe/6J8flt3jkXmByHDcO3k7mksQef4RlCFSMP4Bia5tQZuTz6ZaM/eOYMu1K
         2SHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f6vmZPzK;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=npEtngocv5CLAEBSU2WHXba47z1hoQhnO9muphVhPM4=;
        b=eM5cozAPVimveVT0kunXaAxpiD4Ktjdbh9XY9WMAcfWLfbOyeQjcwVI8PzM9/I+YHd
         LbNHabntBx/yXMV39rTWaPdNqJyjyzTcWXS58PdpHgGkwURRUDxSaOnRpkEr1c9aNSyw
         x4M0UJtARHfw7nqKlnexI8QyXn/VxpkEyqxRd1hkJsVmtsKZPCryoTveSNLQq39D3CbR
         I/VE/elubpqz3h0Lp1rqxdPm7H1T2050YW7UGEFRZLL+BYHsXLaZeWhhlA3pZYK1hjrx
         6Rz1vo09ibcHWHt4zgFM5fhdpH/S93emIiccKY/UCzW1NP7uPYFQLuM1azsXtrqqlV/4
         u27w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=npEtngocv5CLAEBSU2WHXba47z1hoQhnO9muphVhPM4=;
        b=TdcxFTJ+9eF01Cpu0RJ3Qp9zhcoNJCj1RJ766TdZOX7Pnz7ykTtlJiDL+mc4l2Me3k
         B/h8Tk46kamH+MxOxql/hvpUOqNeRfDQIMlur8fSSoFyMJoQKBF+i8E6cNs28I51LoyX
         poBUKWR6hx2eNC7unhCTN+sqH0fMTeTLb5Tfwxk2t7r5IhBbWfMYLgHhCZEEmFjW08PD
         Imaspx2+DhJ7bQq4kGlvqfGQ8caaGtAdBcF0jxrc/2Tfiw+nU8JDCV2jPAHE8QKDNg0/
         Cv1YDNt1s3s+UhJ81RypmMU7xQN5gO7SxraORf46SrCuQSOCGXQFuyyUgycyU14n0sWH
         qUUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=npEtngocv5CLAEBSU2WHXba47z1hoQhnO9muphVhPM4=;
        b=AIZyvYPkjNTsABLewlR+Rd24XqTjkdGzLvvewPa0pf/JHYuO/tdOcKj/ixeJK2YBnx
         L2EBWOGyryZPRYExpbxy4LaOWE6rlpkSi6q0Ua5WMOXnn0WgnWW8fnSQd5jyZSi9b8HD
         1MLxRGizfJkeOBkGyLt3kA3qLy/IKeRY0//sOSSkFHM8C9zLrY+YK9cXaIKGPTXV5D4T
         EYqKh37WPTkBbNZdw0/8Rx0kJOC/q/oPk6XVTUUkC3Ho6YB9g0Wk5O2NWAYRTdgM7Q5e
         HD4vRA524xfiqYxex/fC7Vagfu14G2qWx8v+nQd2Fwpr2KuaaQrsOxgv8sd3VlhZ9166
         Rzfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXVlHSJ+qAtAq36LrJwr9EId5eEf49hz9hcsMDFwrZkoEOdx3WJ
	u+aTuXu3Inz4ihC41If1cu4=
X-Google-Smtp-Source: APXvYqyJNNB85FiKIbaqAXgpKJJsw+oBkzuMdqFjHvoGUjnqZ2HFSy2YLyxNJGSKuyIiLt3g1CWu9A==
X-Received: by 2002:adf:f945:: with SMTP id q5mr29954299wrr.33.1572964676006;
        Tue, 05 Nov 2019 06:37:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7c08:: with SMTP id x8ls68449wmc.4.gmail; Tue, 05 Nov
 2019 06:37:55 -0800 (PST)
X-Received: by 2002:a1c:cc18:: with SMTP id h24mr4767981wmb.40.1572964675408;
        Tue, 05 Nov 2019 06:37:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572964675; cv=none;
        d=google.com; s=arc-20160816;
        b=VV81Uhu/NmflNa7SwmKB4uRRRlTOzu+vYsAWcjgPf5WVAnt4Bc16e1myOOb4vstyUI
         uV5ZGQ+LlrQZGtjhh7Za3avJDmCB3EeUAfkdvWDjk1/ptm2ey6a68iUwqkxXYiFUq14T
         EK+Ncu0UCOtFqnTL0+3wGTMnk4UUuQ0Bumj+WiW/1PGbjTbkPii2l09ZURS3ovU3Jokj
         a40K03mXc+PnpWBI97nO7s838JQhj5aJY1ZVnG49fsqjsVQZC2gzi/PkmaPtamUf857A
         D1ZLBnUo1K+U33K2ruXxI6jLywc0KOvjcXBXx24smZdn0BwZTUU0JAR91lI7+anoy4c0
         4q4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZdJE1lbb5fhgh/dT3Cyx1JGxGkZvflUF/h+AJfWcCJI=;
        b=yetGvzTd/urlhr7Vq4ePa/EnnGTD2sopounZHiVTshcRSswGFK9rIJhsc3gqNofODD
         DYGLalEqC95J0xsU8JXM8zmKfUqxFD7Yvx69nfmo7XqfFDmFJ+2739+IhnW0/ME+erL7
         uMnBvAYMxdw7YOrcj6x8g6x3/cfzR8o5g/7kGeUY7G9/N8GTtODdjVqdJHZnxQNMn+8M
         bObz7baoufHZMuIqDXvyHjYsS0YaNaYi89jWKstMZ2PLDYu6m6pFSiA7SWPi6rK+h/hH
         +oGXLhsRyXAr9JbztpczS3b/F0bnZz3HzFKheoL7Pf5aeEGfKggP7/nQOgfwjJ0+SvRP
         90nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f6vmZPzK;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id b198si1219wmd.4.2019.11.05.06.37.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 06:37:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id 139so22154317ljf.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 06:37:55 -0800 (PST)
X-Received: by 2002:a2e:3a1a:: with SMTP id h26mr23610009lja.25.1572964675138;
 Tue, 05 Nov 2019 06:37:55 -0800 (PST)
MIME-Version: 1.0
References: <20191104090339.20941-1-ilie.halip@gmail.com> <CAKwvOdmSo=BWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg@mail.gmail.com>
In-Reply-To: <CAKwvOdmSo=BWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg@mail.gmail.com>
From: Ilie Halip <ilie.halip@gmail.com>
Date: Tue, 5 Nov 2019 16:37:43 +0200
Message-ID: <CAHFW8PQ0UoyM=O4Seccsze_QDKjW21jM7Wh0koGgUXfm62zEUg@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: explicitly place .eh_frame after .rodata
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=f6vmZPzK;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::242
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

> The wildcard on the end can be left off; we don't need to glob
> different sections with the prefix `.eh_frame`.

Sounds good, it doesn't look like any .eh_frame_hdr sections are
being created so it should be fine to remove that wildcard.

I.H.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHFW8PQ0UoyM%3DO4Seccsze_QDKjW21jM7Wh0koGgUXfm62zEUg%40mail.gmail.com.
