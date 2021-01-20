Return-Path: <clang-built-linux+bncBDRJJBNBQAFBBRGPUCAAMGQEUSVZQ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D041C2FD04F
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 13:53:25 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id d60sf8229876otb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 04:53:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611147204; cv=pass;
        d=google.com; s=arc-20160816;
        b=UqZabRqH2Zdq3sF0YG55CaHbra7bKvNM5GXQ/uDNgCOb8jwvaLL4mrYREtBgD+gJGk
         g1Tw0d7IQGhs1wWOlAb+O5sYUnqkdIlNlIx9XySO2kQNfLqO0EmYKqm+jUz0wj7uau1r
         bGlkHZ0+AJk52HX96ohiW/rwXz0EZ/31rj+goT/+KUjnhxNSAkl35bhzpkbexc1fCFQn
         XJ6b3MpMYh/HhnSKwT+EVzTICeI/1HEQiGCV2GEWNh+1uJDMwVMlrg6KExCkd1jcLQHD
         TQ962W6zsZAjDza6zjb522hodQXn/MHXVn2lGJQfxOY6k7mI/48g1joVLPC+B49FEtBK
         3+Yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=fFGkRf4gsUIf61K1StBWPpUJHNR6TIgs55sZVOE453w=;
        b=TdU4n+icr3AaISqLhjEXCSQDTeuO6JT7KRPvyO/Fw4l4BFH//aZy1LKYx/D7JzJWbj
         hYCos9vGqoPQNFcG6EI8SztywBTEXVe4XEWlgcz3Q3QQj3cevX6XxKeI1TLm3RtPwI6i
         qaVbEklwbWD6wdljfcrDg1xCi/t9rmaw3w28cjSE7YKrs78UjnfnaKSKberbIA8OLLHc
         zOcGrvjeSwm9XD0mS9+AryBDyXvWq8DvDERfdWw5DkrTCwAyFp8SY5XrdnXRHNKiZNS3
         on1l9sK2FqheTb0M26hIe4SjfMoa2JmYDT1sy0tB04TvOZphr7abgtv3lHFO2HkUQ+C9
         gbpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Seq9VaSK;
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fFGkRf4gsUIf61K1StBWPpUJHNR6TIgs55sZVOE453w=;
        b=Ys3BeM0BC3Zvzv9hI+kfxsMCe+L+Ym46OYgZgmk+dzk2II4u+kOjo9Qki/qi1i65Oi
         puoA50esTBYSBAJl0Qi2RNm8kXWTYDkWL3mO5RUqLMZKZPtkefVba/1eDSS0C1svAZ7h
         y1gjMBcVZMp8sk93+aVfc+ATzZbrz3c1W08zVANfIETalyGL5SjmAH0x6N7m1ajuPoS9
         Cj+L8GNyC4yo2G0wEgpb07ya9gFFBnMqFCkpydvgLsWrtSiLmiK38FPiIwXyZpCFN+yG
         bwHRYhxsuIO2HkOOIp7I0H/5URQvb8lT77ZijScy9zbXzHIEp3voykc+7PLUtFa7gds7
         Ghtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fFGkRf4gsUIf61K1StBWPpUJHNR6TIgs55sZVOE453w=;
        b=mfINYEJI0yRYdF21w0MiR2Y5dxHOMUMK94wP/7cIyCxEjcN3fZJ9ug19ddCcg3OVFW
         87Tn0D78ceWDnqut59gqQ7cvyTi2+v/l+c9HGfJs/lWncdQjzKuy9wcGY61qhA5TXGU5
         F8sXbtDp1PMo+YAq7czgRFJI8HzZ0H94JccYneNcd8GkFFiT+Rw+5T9mQSNys9I/H9ry
         1IThMJ+Xhd3kL6dZyYZLgMzapGaJBr7jOjsqajQl4I5goNrtYK9fEfypBstujtDZU+FX
         E1I9Q9A7cLX6W+ei1j3OYKuJhkrFaxNtAAaoY83IYEF0/E0Itr6J3H4c2iLwNBd9KPra
         EJ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fFGkRf4gsUIf61K1StBWPpUJHNR6TIgs55sZVOE453w=;
        b=Qokq8tvzRViwZucQgM4AxCTIPlrcOxToWAuYcZJ130K89bgTVko5jrkMnYRS9orHI7
         fabtUJjbbXtEmHksL/Ysvj79NnHD3LrF9XdHsffYEXdPqGpQM4/orZgVBUhSzVIM7A3C
         fBD0aBLUht366+hnC0TxGfwNmcCQN/lyMuaT1GJtlas1khuqaHVk48MmSdqzvWR8d3oE
         F3O1P0HaiWmhwRZdRjQKKTar/Z23TRi7SPGbxypgR9Nexeao9b15lIWPwMyi3vdzY5h6
         3coYgOaEvytLFrcuL0LO+mqWCo5iQTBznS8xPX3nWMv855idDcvwlBLH9StnRHrYGQYw
         0afw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313JqtbZFCrZKUYpDZo/3G1g6XVpzeXh7HylV6Rez56vsLjHwDl
	lQeW130reRH6/3ak7hYGYeI=
X-Google-Smtp-Source: ABdhPJxMVLbDq2iRJ7oh/3ILhHHvPiGcaADrhtn0U8PXqDXvZLJBqs8w6133LIM120UxYyCw2tBviQ==
X-Received: by 2002:aca:5b08:: with SMTP id p8mr2799536oib.23.1611147204871;
        Wed, 20 Jan 2021 04:53:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7290:: with SMTP id t16ls1088349otj.11.gmail; Wed, 20
 Jan 2021 04:53:24 -0800 (PST)
X-Received: by 2002:a9d:7dcd:: with SMTP id k13mr6915722otn.362.1611147204461;
        Wed, 20 Jan 2021 04:53:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611147204; cv=none;
        d=google.com; s=arc-20160816;
        b=0RCvaTYhd3SciCf2TprkTV97UsG3tOLTALDaqVTpJCcY+9iwCQE7sH1ZH6xGVjre1S
         WIsqmU16QoigVHuH1q0pcR1HjD52fvBONHu+D4OHZIyvlrBGQXlTk1plzG/9ySFn28x5
         aDfWYYywp17RRZeQUs2KF4AsDuJuokH+TqKwISqAISxr3ssbmO1OQp2dqOcVfEx3AnDU
         HbnHuAUnBAHSjtPYqeG2NYm4Z4XCF1CuKp+eoLL86wdiwub/AzlMr1bW9ggKaF6+lba4
         g8bvnI/jTLGspLobKCM0Ia0260eZxAJMXkxONNstSQ4b9gAkXMUV+EKh8B05Khf0LF8W
         RylQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=hB+1o0DrnShLgQiO0WE1Gdsq3IMq61KourkCYu6qcaY=;
        b=H72R8EBR5tP+Qh/X9NcX4KFrEJosFE/II7VtMuidM/dxhagHS2Ft2sjENIxBwWFU8V
         2tmTUIMg8k025vZrCksdc48XCkg4UfBm5P6urOFZI8bVk0F+MjB3/PwqhHaRvUlYJTs2
         PemUxhWHLJhljTBCGrQyIII2Tm9I9876GjMyT/UY7p1IzcjHYnqcKlt4w2cy5hYNWQe3
         77QPw2Y1zy1EpAg0aH4330/SVLVsnw6H1yH0FhB2iAgZcxcaEJtvOdcdmbMTzzAyjTrD
         TAyd5+mdsOE+pDY6V/HJuDdUiCw/d4NBfHUmgekOieW5PRb1LnLdKba8sO23Dho3sVxW
         i9vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Seq9VaSK;
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id x20si230317oot.1.2021.01.20.04.53.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 04:53:24 -0800 (PST)
Received-SPF: pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id v19so15106699pgj.12
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 04:53:24 -0800 (PST)
X-Received: by 2002:a63:4504:: with SMTP id s4mr9089641pga.284.1611147203498;
        Wed, 20 Jan 2021 04:53:23 -0800 (PST)
Received: from ?IPv6:2405:201:600d:a089:7054:d78f:3538:6af3? ([2405:201:600d:a089:7054:d78f:3538:6af3])
        by smtp.gmail.com with ESMTPSA id j17sm2242003pfh.183.2021.01.20.04.53.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 04:53:22 -0800 (PST)
Subject: Re: [PATCH] checkpatch: add warning for avoiding .L prefix symbols in
 assembly files
To: Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org
Cc: lukas.bulwahn@gmail.com, dwaipayanray1@gmail.com, broonie@kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 clang-built-linux@googlegroups.com
References: <20210120072547.10221-1-yashsri421@gmail.com>
 <e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel@perches.com>
From: Aditya <yashsri421@gmail.com>
Message-ID: <14707ab9-1872-4f8c-3ed8-e77b663c3adb@gmail.com>
Date: Wed, 20 Jan 2021 18:23:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: yashsri421@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Seq9VaSK;       spf=pass
 (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::529
 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;       dmarc=pass
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

On 20/1/21 2:51 pm, Joe Perches wrote:
> On Wed, 2021-01-20 at 12:55 +0530, Aditya Srivastava wrote:
>> Local symbols prefixed with '.L' do not emit symbol table entries, as
>> they have special meaning for the assembler.
>>
>> '.L' prefixed symbols can be used within a code region, but should be
>> avoided for denoting a range of code via 'SYM_*_START/END' annotations.
>>
>> Add a new check to emit a warning on finding the usage of '.L' symbols
>> in '.S' files, if it lies within SYM_*_START/END annotation pair.
> 
> I believe this needs a test for $file as it won't work well on
> patches as the SYM_*_START/END may not be in the patch context.
> 
Okay.

> Also, is this supposed to work for local labels like '.L<foo>:'?
> I don't think a warning should be generated for those.
> 
Yes, currently it will generate warning for all symbols which start
with .L and have non- white character symbol following it, if it is
lying within SYM_*_START/END annotation pair.

Should I reduce the check to \.L_\S+ instead? (please note "_"
following ".L")
Pardon me, I'm not good with assembly :/

Thanks
Aditya

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/14707ab9-1872-4f8c-3ed8-e77b663c3adb%40gmail.com.
