Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB5N34GCQMGQEJWQRDOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D6D399945
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 06:43:34 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id o9-20020a1709026b09b0290102b8314d05sf2108170plk.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 21:43:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622695413; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQtJs0Q027n455es7EeIg8NKCqwghRLpn9EnQrjhXgt7nKfnninWqnziTr+Un4JHDN
         WJ4TD//unwQKUI2yNvjsZ6cPlmpWwd/dfmYsFb2Ai8Zv46HURjByQcC1HaSveQbqrNxB
         thhqnZExR/iPS43Yzp09c9w15Z9UXs876SdsCtW1BJNS8/JNcyxpLIsooMhWrDYOmK/M
         CQRp+lJV8tfwESGYyzD13es0CYwe09trP/NAx/E/zzaf3JRks9tWyAsf8spbLMk+gD3Z
         lYg9Z33LMT/2tJxK7YAL0KCdYDak/2y5c0qw71lo3aGV2U1FdOnmeyWNgylH+KUMrNEy
         XpDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5uB3OslbivSll6r8a28WzqE2WBCC6nnE0eNdUvh7/aY=;
        b=nBGzhBnRY7TZ7q6H+qRYa0M5YM0MzyJ5+a8Xx8yFqN2vT71LJJA4zo+6puMDERGgZf
         J1QTZYPc6QvvcENFaRDoeC/XAj6z2fPpFHkaWowCxPmi/bUot2AJkGyj3X+R1A1yx2Sj
         i8qetKNA3tF21vdPeiOLorydbGtlMQuSO0Pm3cBMctbXyX3zFialbI+TdEfHVU7b4zmt
         dbZSHEn5QDOQuICBMFJ4B+dkivCIxCPtUhB5C83V5gImmgA+OUJASANrcC+ILvN8HzI1
         lWIJrpg6GNWVgCxmO31X1YPoGV/HASy3eEE5xITR0+bCB0nFL2f3s7dh2u9j9SBUIFT6
         zHgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="AH/gyS9T";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5uB3OslbivSll6r8a28WzqE2WBCC6nnE0eNdUvh7/aY=;
        b=eKaUrvfniexJIJgWhLNjIrNQhMNkrFx1I2gzdDFasTFCrbkkCSYsC/fRMejb5LVb+R
         Mi14Vsr1FbhegJTsDhICqYL66+erkAN9T133vycjboussn0FhNuQI2L44dvovY6dzJHt
         7shKgRxcblTdtljLAht3RIU9xq3mqH5L79j0LSWhL1DRqx9T4lp+9f8FlNA0jLRnWSGp
         dhxoqPN7vaTE4nsuUSo0xH/m70v+ItwBrDikJUlT8mNllwfrcLx5aEDAhen+vFK35C74
         /UoTzLsOHstNy4+/Ncbp/WvQow78cEyD+J47ERk9IPmq1i6nj0MTpIaBsZCpW7WPNEjM
         3JsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5uB3OslbivSll6r8a28WzqE2WBCC6nnE0eNdUvh7/aY=;
        b=O9jv3dhlx0h+Yz+Mj7y6hqiJ+W8+c1ob7lbBN4vR6zaluGXst0lLDq6qfNXhKr85UM
         XhS9u56oiNDhJz24oPbnTzLXWADavHGAu1FMR4WfjpZ6g8snhSktb8gDPgR7fAhbN5Gr
         zJ3kb0xrtaR7BtP9wbWuqWkgwOMnvU0/nCLm9BwIPQrEyXRValZzHeG1JrXmsycOPT31
         LO42vAgLOXL+cBlYFnP3za00iOWvjDV06e9UhI6ZcC2JrPZ08oteAe5NOSE1bu8Ii1/S
         lElTFP/I3lOBNuBVYnjMoIM2aZr2xdvzBSa+JWgOhiU4Kzw5yya1yHnZu2hAIw2QugHC
         pJBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nKY/Sp7ZpNAxSEiDjoftViJw9WG7rppeyNYz5O6o4XeIrQo9j
	spEN3MnYbRyc6M3qNB6hJNA=
X-Google-Smtp-Source: ABdhPJxSgdWi6jSUB009W1C2grcjXPNYG2QyJeyyzyyJ/o54/mdjfdfJkEHOH7Z8ttoH+GB41VltNw==
X-Received: by 2002:a63:e114:: with SMTP id z20mr37640967pgh.207.1622695413224;
        Wed, 02 Jun 2021 21:43:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:764d:: with SMTP id r74ls607561pfc.6.gmail; Wed, 02 Jun
 2021 21:43:32 -0700 (PDT)
X-Received: by 2002:a63:540d:: with SMTP id i13mr8012567pgb.360.1622695412489;
        Wed, 02 Jun 2021 21:43:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622695412; cv=none;
        d=google.com; s=arc-20160816;
        b=DvcIlDL7JqwszzPtf6cEuSSnKTt3NQju/9SYVqEYgQAI9zDIU1QjYg48wOhqOrs1R+
         dylEt1gOnWFARvXrfGBV/0mZZ1+7PRYf/Utpr+ga8lJUt1nuxNg9BaQCB7quJi9Lsv38
         G2w/mEmT3XqD6oyhGtkCy/Tf/GosA2oHlpnLPKLborRvl2LkeViF1gsCL/GxQYVA26n4
         yjQXdy8Jr5Qa+Gd5wEBLzbbhOJQj6ekn6TcZYb2YEumzSa6Ta1iHFParh85uToHx4LOo
         Gb5nZsDJ31DiLBbMpkGCRNpdnFxV/+pcN/vXjWyC8w9iLKmmP3YY5xkPOc+3Y/3nYTEN
         oTrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CUmamgVPWC8t/6q/thxwT1RMwcukOkFztCjOcqqsVho=;
        b=Oq137gL68VS4cIR1U7N3aovoS4ccwVz37+1XgfCaeW95CqG3bpqI/K215SJgW0s01v
         QeI+Q505gNhvDIMYPjGE0qIJi2mbRcE3oXQt+EVVqj7AR2Uz17fXT3PAr/73djQRGx0L
         q74ZFRt4U2UNP15JsEKmuDjyIwzNDRFusv/mhrZfRofmvWgoHgXr7AXPgYkDSBfmMto+
         uJwFPTatpLdzy86nncVJW9tFczAt81zGicLLX8AnEnL8HzQnnjLcnFGGcWXvUdPZy6g6
         GiWYQwSOe65h+vansQtF1Xlabp7Z8VqD/XkElsqmNuP2mCN+FJdeeI8RAXwQ/OMIH8Yg
         gczw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="AH/gyS9T";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i10si292600pgn.2.2021.06.02.21.43.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Jun 2021 21:43:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 46328613BA;
	Thu,  3 Jun 2021 04:43:31 +0000 (UTC)
Date: Thu, 3 Jun 2021 06:43:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kurt Manucredo <fuzzybritches0@gmail.com>
Cc: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com,
	andrii@kernel.org, ast@kernel.org, bpf@vger.kernel.org,
	daniel@iogearbox.net, davem@davemloft.net, hawk@kernel.org,
	john.fastabend@gmail.com, kafai@fb.com, kpsingh@kernel.org,
	kuba@kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, songliubraving@fb.com,
	syzkaller-bugs@googlegroups.com, yhs@fb.com, nathan@kernel.org,
	ndesaulniers@google.com, clang-built-linux@googlegroups.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	skhan@linuxfoundation.org
Subject: Re: [PATCH v3] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
Message-ID: <YLhd8BL3HGItbXmx@kroah.com>
References: <000000000000c2987605be907e41@google.com>
 <20210602212726.7-1-fuzzybritches0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210602212726.7-1-fuzzybritches0@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="AH/gyS9T";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Jun 02, 2021 at 09:27:26PM +0000, Kurt Manucredo wrote:
> UBSAN: shift-out-of-bounds in kernel/bpf/core.c:1414:2
> shift exponent 248 is too large for 32-bit type 'unsigned int'

I'm sorry, but I still do not understand what this changelog text means.

Please be very descriptive about what you are doing and why you are
doing it.  All that is here is a message from a random tool :(

thanks,
greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLhd8BL3HGItbXmx%40kroah.com.
