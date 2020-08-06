Return-Path: <clang-built-linux+bncBDAMN6NI5EERBB4BWL4QKGQEOSKZK2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 200BF23E3E1
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 00:13:28 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id r10sf6492474ejy.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 15:13:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596752007; cv=pass;
        d=google.com; s=arc-20160816;
        b=jqUaTXtB8VC4IJDg/bPT/0jQpjYSRf/cLk07o9HESbnwW5AKBiTxXGAvHUXJkcuij8
         7CHunMHWimosDCFaM1Z1KXdGqg5TRtJ/AiB/KvVzMt78nSahRSbEuuHM9vo8H/CYRO2u
         EDJkvWvpJZwk3AkO3k5vIVjFcmGmfSeTPyRwlJf7DGLOrT62Dl8YywWPEGO5CGHxpOI1
         MWTcCWbvfEKVhieefAd3s9cSpu8I+w4nBQfUWZ13xlY99wcuasGTjYbEJxe15q2D1J+T
         uMffiWVy/GwM1ZQpWNYFYnQylwy5x0t0mugskCpul+a4XCQLyTzG2yhCTaFD0umds/Wh
         hZyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=BVc9HEaY062BWXjVk0/Pafwv/c4V9q1v9XZbNkfb+IA=;
        b=RsTgfQwszU18cW77WymUvNd4lMpNHbAlLbK/xk20IMuTBEYDwL2IpTmyf5PA41FLb2
         M3jW8zkBS56z4bTShxjuhQ4XFuhFH950A256/kxDcB5vBnpioZXbCWO1XHbn6Xh5pMCI
         j3mLrXFxFsJfzzoQ8jzjixkN8nRuqtbTXpMcM8brK6EP7CX5PUsWAzwFo6ZaLprp1zZP
         QiFYW1mZwM1PrKsTYICbTcfbyV/lXPxkZMECYFu7TRmhvQ760YlzC97nZtCFtPHKGMBZ
         gWuyza6pn02X8n9Pl6rtXDBwBcD2dpMwLhKi9Bfm9+XADm3NtaXpjClA16nIPpXtP+7j
         YBqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=jHeJAU7z;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=qIYoe7J1;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BVc9HEaY062BWXjVk0/Pafwv/c4V9q1v9XZbNkfb+IA=;
        b=SE6SqFNLyFBtQeDvHW6f1E+qahz3udCZmsJfnG7CWhR+j6VpSBm3smLPWLaxkvRddO
         HtBP72dlkiLGzu2lZG3Pz9yLQGyYg3YdVJBax8eC6lZ9cpq4i5K27sy8T7fMwW4CUUSQ
         obosuXomAc0lpsMjJiYIGZ4T2bgOZC4WeClxjibTVdmmm9BV6UqpDTrC0Duz5hVk7FUG
         zV8t8O3veBPPYWs0BTupQHPO/3oBC8quMqJFd5h5ihAQq4puJ/+xBN2fOvuyEo0DRnv/
         uXM4KG43UJGHbJ2NZhVIZcW1oKrtF/aFHqBOZqft2FIwciVDdceWDLKK83yRh99SeWqU
         LYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BVc9HEaY062BWXjVk0/Pafwv/c4V9q1v9XZbNkfb+IA=;
        b=YA4Pz6Up9l2GgW38zGYNnWa/IxxhoGg8jFJ2m9QzJBKubwL/NefaDXzxBaxZFSbIId
         TLWzWHGsUBxDH1qm7JrFxeBealdJC8J3P0n/SQAoRPWzL8zy2QxiemNTrBBufE5i3deq
         6elxpTNvD2KKvwCsf0+gvUZ8fVEAP4cfviFI8wpm7oG004xgG8HiZxbZn47dA9MlcB3z
         z67xWN5HZmSB/sZzoS3twdRGdF8fukElEdcF4c+bUDQkhds2wbzxBfWJaGY58zAK9QPp
         qSv9lPy8A15ybhcVmplCVmvVpn47sIphln2yEimMEH8GidQuT54DbYF55EoBf0fGWhQ+
         Oj8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VEP95ay/jh49471gbocCKo8RaeV6cc4U16zTgC9sRTx+YhDns
	kGBsQvfXV+oEdvglK+5+nLI=
X-Google-Smtp-Source: ABdhPJwURa7cnjW5q6xcelygMX4CDG3B4ocFvh8joZ8Z/UoHkWJrqqJz4fO938ykMVihy61u1ydiWQ==
X-Received: by 2002:a50:e1cf:: with SMTP id m15mr6122931edl.303.1596752007860;
        Thu, 06 Aug 2020 15:13:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:baa2:: with SMTP id x31ls7130033ede.0.gmail; Thu, 06 Aug
 2020 15:13:27 -0700 (PDT)
X-Received: by 2002:aa7:dc44:: with SMTP id g4mr6174308edu.273.1596752007341;
        Thu, 06 Aug 2020 15:13:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596752007; cv=none;
        d=google.com; s=arc-20160816;
        b=KgyJ9+yHAmFyJoMh6kPjvJ2CJVlX6kEnTEpAcRuV0w0cHPX51FuQdZvr7eYGqr63Je
         U/YmcB74u34ZWtlCqDiuE3AxeD+HE3syn17BDbglAfQU+X2qHCnSK9RhnY3hfLnKwPEd
         2aUWT0xL2DqVYyv190nkSQ1QtX2d4Te4eE7YKuslmhaiolscEqZ9myNn2p1UXuQwU386
         CtQz1KxnKlNMFuudIusuncEFI2Y2XkSbwr7Z9adbq2gkgVNaryJcxDEsgOvX4ZQajN24
         w+QakENUYj0RtflW421dhs82piDl2iq59v+kajm0maXbthhc8CEw2sgapgU3UQRIJXlC
         TB2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=mZLBLAIbdKaiA3wdTA7rUL51TgNpJlVhkmQwVAv+Fpc=;
        b=UdQ45MMXMowo0MHtlYNmPFuyeIgcwKdZ8jF8GZw4gkOhuArLNKsRJzv+j2refxmbQ6
         SFl8dnw3ol9RLFqxWbK2WpofI3g9VaPp+HNXhWE99f1LYwIPNtvjSDiUKeVF7Za7tZzy
         2RVOPkUvgp7wiiO7+1tas9rZtapPmDRgDwp/Qhlb0+pp0HZykM1/A3s4L7VPncc4UCL5
         TdU4LHZ8C5ohALTh8vY8Lzy8jGD/KZytCQyivChZ51apVI9AxsPDYE/w2hWVw1qPCtZm
         TCwOBChnzK5C6VN3YTKl7QB0xCZRdAQWr40r92icgWyjaAuSvKNJp7K9vNRph+Hi0bLJ
         H1zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=jHeJAU7z;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=qIYoe7J1;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id t30si78658edi.3.2020.08.06.15.13.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2020 15:13:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: sedat.dilek@gmail.com, Arnd Bergmann <arnd@arndb.de>
Cc: Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, linux-kernel@vger.kernel.org, Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
In-Reply-To: <CA+icZUUcH91QDDEin9GyEoD8kqrQSPAnkZJyMnXU40Sk5FAo3A@mail.gmail.com>
References: <20200527135329.1172644-1-arnd@arndb.de> <CA+icZUUcH91QDDEin9GyEoD8kqrQSPAnkZJyMnXU40Sk5FAo3A@mail.gmail.com>
Date: Fri, 07 Aug 2020 00:13:25 +0200
Message-ID: <875z9vh18a.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=jHeJAU7z;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=qIYoe7J1;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Sedat Dilek <sedat.dilek@gmail.com> writes:
> what is the status of this patch?

Just looked at it.

> I needed this one to be able to build VirtualBox via DKMS as an
> out-of-tree kernel-module.

Not being able to build the vbox rootkit is a feature, not a bug.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/875z9vh18a.fsf%40nanos.tec.linutronix.de.
