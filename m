Return-Path: <clang-built-linux+bncBD4LX4523YGBBYHR5PZQKGQEARWPNFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 93927192109
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 07:23:30 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id d7sf903182qvq.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 23:23:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585117409; cv=pass;
        d=google.com; s=arc-20160816;
        b=wo6lLpBPEsi+XaFDEHwtoa3qWftMo8bjLQ36AiCR2vIQ3eVRtJaqK0STaQ75SxaqaK
         EQ5RM13rKsWvKXRpXmzW4JXIcW90+iDSXbDmxOtz16bW5rCTPhU/5JcXnOvJv7XcvU+c
         0Ubyg0OU84Mlv3qhgp/X4GylOOnsBSYnZSbpodZQdMRePWFUexB2SNz8ms+Ebezhxulv
         3nlV4vj51wvdYCZ/XWsMP6aLi4xOMl2tvsZI1GCDmIHxeDANmYSnzIPEH2eXYaTD23wL
         8Pt4dCP5+9PisPRiXryucxxbmzr3yh0oLqmTfR4bdHSgDrDGoJHF39RY8inR3kmvKZ3K
         bXTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=noxS+geHOFRs8cQRI2m8iBPZifr0qqVLDDX3rzXwU14=;
        b=JoxxocnYw415VPKD4zUZXJzWGjVE6hyFa2Wk3MeK6gGNinojv1XHh1h0NwiHOM5hAz
         sKD2AiHolnKY8ElChoC00iGCUY8VQk44y9LN9m6BL8yd54rkUh86vDkHRskLP3uA0H82
         FuApjzfMnnN5l8htkLR/NP50j+IEjFLcIEPWh5kH8DiapwSYN7MjlVaWdwLyL41UCKNe
         WnahPIps8zmMhvx+fHzkIXsqsfK4/VaEwyohkYc1+1Fq9kTugftSe4D03ORgk4Qf5C6u
         sF1Tr2qStJ8PM7pNKf9en8sL02gkKC5oLO+xkPDWmxPKAXngZRiTD4OOivl+oBMwpCLB
         14Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=noxS+geHOFRs8cQRI2m8iBPZifr0qqVLDDX3rzXwU14=;
        b=cBR1Jn5M/ZOCdQ0FAheqQBYgWITl8MdvjjZ+HNuOgt5Xq7ZBuhjAgws4M42JH+zHda
         Kt+Y5QvU6hcH3aOuwigDJlSuWaMRIuFPNJONcvGfJ8OwWj98wIvhTzOTshUQJ4KlSE2A
         usiNsdLvgKTEuLcJ0GdCYlyK9iNHoIlZjW0wN4fXTbeq0bpiw3XHy8F1rSnGckD/+CWZ
         wm5aP2X2/TC6Id21pqyJiDck+Thb7YGubSrb0Isst2d0OdRc4ck54E6Ti1ucnBwSFB0u
         QEl6+S9HlBdaecYLAQEJH9MGanXGx8A1Bbisl3uEsXYC06eoZDhSJfVrc8lEDvYRYAie
         Qu+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=noxS+geHOFRs8cQRI2m8iBPZifr0qqVLDDX3rzXwU14=;
        b=gS6YgfoRfddsp8fmWeLew6HoyiMS+SYqWpcsLrLJ3Rw63ZmwWioXsd/v5/0lJ76lCO
         2XIPzX6so+aK/auhYaVHmYCd/Qw2Hm+MKUVajyo46NlJpQrawmx0oo43nA4XAddxvmft
         ZY0xrj/JK3c6Xk8+l6fkk7/GYnYVmVOM/ma237N4L02+glZdOY5LT28MnqBeVjROmbv4
         NySbr2pq4wQMhwbPPBDxOW5+0bwJyWTEbq0DsRDIrc5QjToLceut+ItJQCWZsqT4BMN5
         sZ+m59dS4m8UtG3AK5ZhocSu9pvFSq1wo8FEFyOp6w5l3I1vdqfUMfldk3Mlu3HyfCS+
         hTKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0m3fW5bocYqf9IvNwckgrFpatFzOMYbgDJmPSNmUS6CyEqboJV
	+faF2OHeR6CqMfrSVnulYPM=
X-Google-Smtp-Source: ADFU+vtT6Qvkrrqdo2ZUNqqMzE4n67DKMip5It3DNMfoL118u4JSQkueZuvjTUEkXB0Ajyt7dZPlNw==
X-Received: by 2002:ad4:5642:: with SMTP id bl2mr1785853qvb.11.1585117409518;
        Tue, 24 Mar 2020 23:23:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f007:: with SMTP id z7ls269984qvk.9.gmail; Tue, 24 Mar
 2020 23:23:28 -0700 (PDT)
X-Received: by 2002:a05:6214:72f:: with SMTP id c15mr1688277qvz.3.1585117407992;
        Tue, 24 Mar 2020 23:23:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585117407; cv=none;
        d=google.com; s=arc-20160816;
        b=DuuQqfJQjUUKbvXHFEdQxR4xTWL5zaN72vcTo5AXs/9qjyA8Eq6RR2fiYHx8vB27Ir
         1juq/rUJrUE43Vp2ngxRSzZ0BWGyoWmEg/t0eJDP3p//5wNIOaOlaqqM4q3BR16iH1Uo
         L0VopYYhba67BpbIACyoq3a91rY/28kuZSCG3QWbInPhxK9+5n8tH8ahZIziFOiCFHlR
         /W80X/9Bf0sd3ByIFx+shfMkUxxZ1vbrWnxday4hMnPdL2+E3C2o6fbkOuf1iPdbKppu
         Dd+0jWCytyYe2xGuJ1ljFIp7hX47uS/nPVd5VgrZRXgFT/WgKnemuLg144td+7gn2Z7W
         u83A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ECjxXDB3qmTd1sck7yTLiVWI5of9TLNVZEIyMmGXioE=;
        b=Y5tZiHQk8z9P+xi1En1IX1/vgXHf7IcKm4+hOu5Pi/YmIVgjBpybFBXmBSXba+tirV
         ruD4qI78lQOh80XAJe/6ugv8hJ9oOL0vL4NG15rSXqy8VJf6LOOGaiIThb6lDSb3ovqD
         2yyWhD1xJ+jFVmvpIxf5l9kkDtNRFvT9uO2s4KZuI52YYjAPnVYfR/x5HeF060mQSBYe
         YYRbCAfLzJf+2ant9+cvfVmtILk+kAKF+kMHOufJtWTWnE6D7tVOvQkJDfaIkscU5fFB
         LOkeSl5hRXXq9CGcEt1BlenjrmIb/aDuuqIZurmwuH2NIRoxEpdHf00dSVXMLj8A19B3
         8QDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id p11si516337qkh.3.2020.03.24.23.23.27
        for <clang-built-linux@googlegroups.com>;
        Tue, 24 Mar 2020 23:23:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 02P6NOmb001139;
	Wed, 25 Mar 2020 01:23:25 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 02P6NNtI001138;
	Wed, 25 Mar 2020 01:23:23 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Wed, 25 Mar 2020 01:23:23 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Fangrui Song <maskray@google.com>
Cc: linuxppc-dev@lists.ozlabs.org, Nick Desaulniers <ndesaulniers@google.com>,
        Joel Stanley <joel@jms.id.au>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] powerpc/boot: Delete unneeded .globl _zimage_start
Message-ID: <20200325062323.GS22482@gate.crashing.org>
References: <20200325051820.163253-1-maskray@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200325051820.163253-1-maskray@google.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Tue, Mar 24, 2020 at 10:18:20PM -0700, Fangrui Song wrote:
> .globl sets the symbol binding to STB_GLOBAL while .weak sets the
> binding to STB_WEAK. They should not be used together. It is accidetal
> rather then intentional that GNU as let .weak override .globl while
> clang integrated assembler let the last win.

Nothing is "overridden".

The as manual says (.weak):

  This directive sets the weak attribute on the comma separated list of
  symbol 'names'.  If the symbols do not already exist, they will be
  created.

so this behaviour is obviously as intended (or was later documented in
any case), so LLVM has a bug to fix (whether you like this (much saner)
behaviour or not).


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325062323.GS22482%40gate.crashing.org.
