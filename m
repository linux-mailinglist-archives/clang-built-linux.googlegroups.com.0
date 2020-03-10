Return-Path: <clang-built-linux+bncBDIPVEX3QUMRB7NIT7ZQKGQE557MQUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C727318059B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 18:55:10 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id t12sf9467909iog.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 10:55:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583862909; cv=pass;
        d=google.com; s=arc-20160816;
        b=QHUtuJ/MaFYym1vf7CMyzYvbpFgj1GUaCthaDCreXx++o0ndfZr8GOzm9XkG+5sLGO
         6esqOl9UXUyMJGy5/M772egqgqHKy9xJPHcfliZrz8cU1uJjy8+h7iy3c5X8aemakoOO
         sMSqWaSLw9YacATUgObWb1cCJU5dRf/Rn2J+ORh6jh0r2sgRH87v7F21aJzvAz2ryUK9
         amqNuy/f/tbljW8+c0mu/DbQcIVGoH3AwuansiY/BysJ760MV8DWIXXHROPRJdwWgP+n
         /26RHl+zyP30wJx1n1+0NiJl8i84dxVy1dzEuag5J6AX0hd3S6vH8dXDMuqQQYpdoErT
         OpZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xdyJgx8ish7OhFakexnFIEG+/u+NnLl1+4Gj8Kx+VgQ=;
        b=hAzq+9EclsRcZ/VFQAaS2R6euiTtZoWFK7cfLxULZIb49yae+JqovFiGKWZX/U4/5U
         vAYo7szS00M+JQ4t2CCKDfZJXvMgJn2QqzsF5tOU67u9ko09xyy2tjf+48O6UP2fqkCU
         OWLGxTTSb3JlsWJ24lzJhvqFIYXk2kuny3DCKaXvEKcz+IH1RcdONnWyRC/Cot1Vca4u
         +4NBF/NlBXegwTXez0CTgVrCRwA8UyAhGc68PKa7blLzGDAMe0s3U8W8Eup1CzXJXMiW
         HxVHzgdORm2euoGNW7pGkELo+HAYFhqYcqy77VKswDmgq9GoOi1fTOofTmIUYjCnGgYr
         buLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xdyJgx8ish7OhFakexnFIEG+/u+NnLl1+4Gj8Kx+VgQ=;
        b=pIlNFuEZSFt9EKjal+1nhN5kEYNz1k109ccwuYNk1VJFJ2NhhtN7GFIed/I0kkGHdV
         JH+g5rnA1qsQgrhLMtNcDTbQ49eit36wqIjYouu7laaaEFWKTnJ/bNK98V3YPk8NduPP
         MpLTf5ESEUYvl3nqDbRVtkDBreJmr+X+OzDaMlM3F4oEHcMpNfj9eUsQ/ZpWr/6eVSus
         cOOMNuuGZNLUb6USkC2Um1cRvvSYKQjGdemmjICKXMvMVQInl+ULjdJVoAeCgkljxuIv
         vdRAhifHErOgcwDOBxAjg1YT/GxXF/ySBWUmo4NH7h+MrwslbQT3dCSvo0Arjm/oORjb
         nXOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xdyJgx8ish7OhFakexnFIEG+/u+NnLl1+4Gj8Kx+VgQ=;
        b=C8gvE0BZm7dTWD1ZAzMMF0Mg6mQ4zwptK8ku4qoMyJHaOv3rk2A3IbPAocLchGKkkp
         cUAnx7OxBQwH5grXerJg8fC2PqTvl0He1Q/BtPm0SLdW742JXWR5mHXEirItdzalJftN
         6y5ZgGX25Eacv7qtT7Xz0k06AaeypJUXmvdpqU1wrnO+hn/7ufp9eE0qw7vckKoF3ViX
         k2DSUCEGpDyK+uUGbrcLv8RVi/temJi40SyvmQAexgQqyr7tOGBQEsVUQWOcll7yejDC
         F2nxZfdyJe2W49LaYFR1gIYuYq+f5lcg5hg8PE44BL7Q1vxcFg+1bIJfoR8anINwDzEm
         Xyfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3uDImPeU4qEblk+LQEUHYY1OdqXI6iqfjkyoxipDFOFmeJEekC
	T/Fr2m32q/If791USB/LHJo=
X-Google-Smtp-Source: ADFU+vss4s9egwofRynxJ9M6ik12DPiWDoUtsCL1WNuZ1qQlzEMHmrv0gswEksX0544Q/u7lZDgcqA==
X-Received: by 2002:a6b:d008:: with SMTP id x8mr13813593ioa.87.1583862909515;
        Tue, 10 Mar 2020 10:55:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:ab47:: with SMTP id u68ls1202632ioe.2.gmail; Tue, 10 Mar
 2020 10:55:09 -0700 (PDT)
X-Received: by 2002:a6b:e904:: with SMTP id u4mr4619787iof.44.1583862909172;
        Tue, 10 Mar 2020 10:55:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583862909; cv=none;
        d=google.com; s=arc-20160816;
        b=OXFzRS4BZTBKKNDjbIk9WWipcxuf6d4BeSiNb57JvyKqWdPA/Yo29Twlwl/Jp1b9As
         E6XBEgLD9f/W3XOTQgpmiukpFophaxfX7nG57Fzgo+iTI+dBSdQ334hlaw0iFoUVqn7e
         p732Ja+MpGd0FbHWklRFyG9kbhBRr7n6vvgot8krUf/KSFosE2vtCnKTc6OXDs3cNPA/
         nIH2qXbDZ+MxJrzAlxveR8DHMUzbPxw4VbqEU7NOFmNE6Vzbvpon6LBhl35zS30w21IE
         W718rXT2Xy4kUpY4T9+lgYEar7dq20nauKU+F1A2jn3frM0mu8mAGZPuvYcz8SCc/scf
         DXPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=pFuIi6WHHEV9BHZrJ7ncV/vuhLP/pYln7XaIClB5rNU=;
        b=Y0gAASP8bIXYOn7SgnuVaEKR9cEvSq7QLVMhB/imm61gCkglGyOVhDiGSUiTlR/918
         +Fk2kYSY0SmPb5r8PhMZeh23k0Jw8FyeXYY+lXM9+Itv4ToXnWc4sruse3AftZgWgjAL
         aJsLkVyu1tiflEOeZsCA4wv0yRCBSsNoTH/c4uE+mnFKt2wdP5b7CYrkSONjJr8U6nAn
         eWolXSDRa0v1XgPWsZ5cr5fflHdySQzhluUcgnAGzqaqPMCG/K93fL2jxs8vXX+v6+AN
         YBn62iaUGOsrv3gW0kVybt55pbYlj0OpvKsFUWj8e88TVMT9BP4/jBfrpwu0wJEQL10Z
         HYIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id t14si855707ilo.4.2020.03.10.10.55.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 10:55:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 11B3A537;
	Tue, 10 Mar 2020 17:55:08 +0000 (UTC)
Date: Tue, 10 Mar 2020 11:55:07 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Federico Vaga <federico.vaga@vaga.pv.it>, linux-doc@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH 6/9] docs: translations: it: avoid duplicate refs at
 programming-language.rst
Message-ID: <20200310115507.7454fc40@lwn.net>
In-Reply-To: <e733111f3599dff96524ad09ace5204ac6bb496b.1583250595.git.mchehab+huawei@kernel.org>
References: <afbe367ccb7b9abcb9fab7bc5cb5e0686c105a53.1583250595.git.mchehab+huawei@kernel.org>
	<e733111f3599dff96524ad09ace5204ac6bb496b.1583250595.git.mchehab+huawei@kernel.org>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted
 sender) smtp.mailfrom=corbet@lwn.net
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

On Tue,  3 Mar 2020 16:50:36 +0100
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

> As the translations document is part of the main body, we can't
> keep duplicated references there. So, prefix the Italian ones
> with "it-".
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Applied, thanks.

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310115507.7454fc40%40lwn.net.
